from ODState import ODState
from SingleAgentState import SingleAgentState


class ODState_2(ODState):
    def __init__(self, backPointer, singleAgents, problemInstance, moveNext, preState):
        super(ODState_2, self).__init__(backPointer, singleAgents, problemInstance, moveNext, preState)

    @classmethod
    def fromProblemIns(cls, problemInstance):
        numAgents = len(problemInstance.getAgents())
        singleAgents = []
        for i in range(numAgents):
            agentId = problemInstance.getAgents()[i].getId()
            singleAgents.append(SingleAgentState.fromProblemIns(agentId, problemInstance))
        return cls(None, singleAgents, problemInstance, 0, None)

    def expand(self, problemInstance):
        """ return valid next states (intermediate/standard)
        :param problemInstance:
        :return: newODStates
        """
        currentAgent = self._singleAgents[self._moveNext]
        newSingleStates = currentAgent.expand(problemInstance)
        if newSingleStates is None or len(newSingleStates) == 0:
            return []

        newODStates = []
        for s in newSingleStates:
            mAgents = self._singleAgents[:]
            mAgents[self._moveNext] = s

            if self._moveNext == 0:
                newODStates.append(ODState_2(self, mAgents, problemInstance, self.getNewMoveNext(), self))
            else:
                newODStates.append(ODState_2(self.predecessor(), mAgents, problemInstance, self.getNewMoveNext(), self))
        validStates = filter(lambda x: self.isValid(x), newODStates)
        return validStates

    def generateNextGoal(self, problemInstance):
        newAgents = [s.goalSingleAgent(problemInstance) for s in self._singleAgents]
        return ODState_2(self, newAgents, problemInstance, 0, self)

    def setConflict(self, num):
        """helper function to debug"""
        self._conflictViolations = num

    def setgvalue(self, num):
        """helper function to debug"""
        self._gValue = num

    def __lt__(self, other):
        """Compare two state for priority queue
        Breaking tie considers smaller hValue
        :param other: same candidate state
        :return:
        """
        """
        TODO: break tie considering _usedElectrode (visitTable)
            ; and _conflictViolations (CAT)
        """
        assert other is not None, "State can not compare with None type"
        assert isinstance(other, ODState_2), 'type of other state: {0}'.format(type(other))
        if other.hValue() is None or self.hValue() is None:
            print("set Heuristic Value first")
            return None
        dif = self.conflictViolations() - other.conflictViolations()
        dif2 = self.gValue() - other.gValue() + self.hValue() - other.hValue()
        dif3 = self.usedElectrode() - other.usedElectrode()
        # breaking tie considering hValue
        if dif == 0:
            if dif2 == 0:
                return dif3 < 0
            else:
                return dif2 < 0
            # return self.hValue() - other.hValue() < 0
        else:
            return dif < 0
        # return dif < 0

def main():
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap

    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    agent1 = [Agent(0, (9, 6), (9, 3)), Agent(1, (9, 3), (9, 6))]
    problem1 = ProblemInstance(graph1, agent1)

    print("=== test lt ===")
    s1 = ODState_2.fromProblemIns(problem1)
    s1.sethvalue(18)
    s1.setConflict(1)
    s2 = ODState_2.fromProblemIns(problem1)
    s2.sethvalue(19)
    s2.setgvalue(2)


    print(s1)
    print(s2)
    print(s1 > s2)

    from Queue import PriorityQueue
    openlist = PriorityQueue()
    openlist.put(s1)
    openlist.put(s2)
    print(openlist.get())
    print(openlist.get())

    # # s1.setHeuristic(problem1)
    # print(s1)
    # assert s1.predecessor() is None
    # assert s1.getPreState() is None
    # assert s1.isStandard()
    # assert s1.isValid(s1)
    #
    # # print("=======  instance dict ========")
    # # for item in s1.__dict__:
    # #     print item
    # #
    # # print("========  class dict =========")
    # # for item in s1.__class__.__dict__:
    # #     print item
    #
    # print("====  test expand function ====")
    # expandStates = s1.expand(problem1)
    # map(lambda x: x.setHeuristic(problem1), expandStates)
    # # for s in expandStates:
    # #     print (s)
    # # print()
    # print("memory: {0}".format(sys.getsizeof(expandStates[0])))
    # expandStates2 = expandStates[0].expand(problem1)
    # map(lambda x: x.setHeuristic(problem1), expandStates2)
    # # for s in expandStates2:
    # #     print (s)
    #
    # print("=== test predecessor ===")
    # assert expandStates[1].predecessor() == s1
    #
    # print("=== test lt ===")
    # # assert s1 < expandStates[0] and expandStates[1] < expandStates[0], "lt test fail"
    #
    # print("==== test eq function =====")
    # agent2 = [Agent(0, (5, 6), (6, 10)), Agent(1, (3, 6), (12, 3))]
    # problem2 = ProblemInstance(graph1, agent2)
    # problem2.plotProblem()
    #
    # problem3 = ProblemInstance(graph1, [Agent(0, (7, 6), (6, 10)), Agent(1, (3, 6), (12, 3))])
    # problem3.plotProblem()
    #
    # p0 = ODState.fromProblemIns(problem2)
    # p1 = p0.expand(problem2)[2]
    #
    # p00 = ODState.fromProblemIns(problem3)
    # p11 = p00.expand(problem2)[4]
    #
    # # print(p1.getRestricDir())
    # # print(p11.getRestricDir())
    # assert p1 != p11
    #
    # agent2 = [Agent(0, (5, 6), (6, 10)), Agent(1, (2, 7), (12, 3))]
    # problem2 = ProblemInstance(graph1, agent2)
    # problem2.plotProblem()
    # problem3 = ProblemInstance(graph1, [Agent(0, (7, 6), (6, 10)), Agent(1, (2, 7), (12, 3))])
    #
    # p0 = ODState.fromProblemIns(problem2)
    # p1 = p0.expand(problem2)[2]
    #
    # p00 = ODState.fromProblemIns(problem3)
    # p11 = p00.expand(problem2)[4]
    # print(p1.getRestricDir())
    # print(p11.getRestricDir())
    # assert p1 == p11


if __name__ == '__main__':
    main()