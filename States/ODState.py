from MultiAgentState import MultiAgentState
from SingleAgentState import SingleAgentState
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.ProblemMap import ProblemMap
from SingleAgent.Utilities.Util2 import Util2



class ODState(MultiAgentState):
    def __init__(self, backPointer, singleAgents, problemInstance, moveNext, preState):
        """
        _restrictDir: to-move droplets cannot move to spots occupied by other droplets in last
            step
        :param backPointer:
        :param singleAgents: list of singleAgents
        :param problemInstance:
        :param moveNext: next agent to move
        :param preState: previous intermediate state
        :param direction: so far assigned directions
        """
        super(ODState, self).__init__(backPointer, singleAgents, problemInstance)
        self._moveNext = moveNext
        self._preState = preState
        self._direction = None

        # self._newPosition = []

        # no restriction by previous
        self._restrictDir = [[] for i in range(0, len(self._singleAgents))]
        self._updateRestrictDir()
        self._updatedDir()

        # self._updateNewPosition(problemInstance)

    @classmethod
    def fromProblemIns(cls, problemInstance):
        numAgents = len(problemInstance.getAgents())
        singleAgents = []
        for i in range(numAgents):
            agentId = problemInstance.getAgents()[i].getId()
            singleAgents.append(SingleAgentState.fromProblemIns(agentId, problemInstance))
        return cls(None, singleAgents, problemInstance, 0, None)

    def _updateRestrictDir(self):
        """ update self.allowDir using predecessor
        """
        if self.predecessor() is None or self.isStandard():
            return
        for i in range(self._moveNext, len(self._singleAgents)):
            restrict = [x.getCoord().getNode() for x in self.predecessor().getSingleAgents()]
            del restrict[i]  # do not count itself
            possibleNodes = self._singleAgents[i].getCoord().getNode().get_Four()[:]
            for direction, nextNode in enumerate(possibleNodes):
                if (nextNode is not None) and (not set(nextNode.get_neighbor()).isdisjoint(restrict)):
                    self._restrictDir[i].append(direction)

    def _updatedDir(self):
        """ update _direction for last moved agent
        :return: direction
        """
        if self.isStandard():
            self._direction = [None for i in range(len(self._singleAgents))]
            return
        self._direction = self.getPreState().getDir()[:]
        updatedIndex = self._moveNext - 1
        preNode = self.getPreState().getSingleAgents()[updatedIndex].getCoord().getNode()
        currentNode = self._singleAgents[updatedIndex].getCoord().getNode()
        direction = Util2().moveDir(preNode, currentNode)
        self._direction[updatedIndex] = direction

    # def _updateNewPosition(self, problemInstance):
    #     for singleAgent in self._singleAgents:
    #         nsize = problemInstance.getGraph().getSize()
    #         indexFromPos = singleAgent.getCoord().getNode().getPosition()[0] * nsize + \
    #                        singleAgent.getCoord().getNode().getPosition()[1]
    #         self._newPosition.append(indexFromPos)
    """ ============  functions to update member variable ==========
    """

    # def updateVisitTable(self, table):
    #     if table is not None:
    #         self._visitTable = table.copy()
    #         # print("original table: {0}".format(self._visitTable))
    #
    #     if self.isStandard():
    #         updateRange = len(self._singleAgents)
    #     else:
    #         updateRange = self._moveNext
    #
    #     for singleAgent in self._singleAgents[0: updateRange]:
    #         singleAgent.addSingleAgent(self._visitTable)
    #     self._extraPins = self._visitTable.getExtraPins()
    """ ============  functions for astar ==========
    """
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
                newODStates.append(ODState(self, mAgents, problemInstance, self.getNewMoveNext(), self))
            else:
                newODStates.append(ODState(self.predecessor(), mAgents, problemInstance, self.getNewMoveNext(), self))
        validStates = filter(lambda x: self.isValid(x), newODStates)
        return validStates

    def isValid(self, s, StaticOnly = False):
        """ check dynamic and static fluid constraint
        :param s: OD state
        :param StaticOnly:
        :return:
        """
        assert isinstance(s, ODState)
        # standard state
        if s.isStandard():
            return super(ODState, self).isValid(s.getSingleAgents())
        # intermediate state
        movedAgents = s.getSingleAgents()[0:self._moveNext]
        if not super(ODState, self).isValid(movedAgents):
            return False
        if not super(ODState, self).isValid(s.getSingleAgents(), True):
            return False
        return True

    def goalTest(self, problemInstance):
        if not self.isStandard():
            return False
        return super(ODState, self).goalTest(problemInstance)

    def generateNextGoal(self, problemInstance):
        # TODO: increase timestep by 1, predecessor is goalNode, prevState is goalNode
        newAgents = [s.goalSingleAgent(problemInstance) for s in self._singleAgents]
        return ODState(self, newAgents, problemInstance, 0, self)

    """ ============  auxillary ==========
    """
    def isStandard(self):
        return self._moveNext == 0

    def getNewMoveNext(self):
        if self._moveNext == len(self._singleAgents) - 1:
            newMoveNext = 0
        else:
            newMoveNext = self._moveNext + 1
        return newMoveNext

    def getMoveNext(self):
        return self._moveNext

    def getPreState(self):
        return self._preState

    def getDir(self):
        return self._direction

    def getRestricDir(self):
        return self._restrictDir

    # def getNewPosition(self):
    #     return self._newPosition
    # def _isSamePostMove(self, agentNode, restrict1, restrict2):
    #     """ Whether agentNode have same set of possible moves under restrict1 and restrict2
    #     :param agentNode: node in graph
    #     :param restrict1: list of illegal nodes
    #     :param restrict2: list of illegal nodes
    #     :return:
    #     """
    #     res1 = []
    #     res2 = []
    #     l1 = agentNode.get_Four()
    #     for i, node in enumerate(l1):
    #         if set(node.get_Eight()).isdisjoint(set(restrict1)):
    #             res1.append(i)
    #         if set(node.get_Eight()).isdisjoint(set(restrict2)):
    #             res2.append(i)
    #     res1.sort()
    #     res2.sort()
    #     return res1 == res2
    """ ============  functions for compare ==========
    """
    def __eq__(self, other):
        """Compare: each single agent: ID, getCoord.getNode (type and position)
                 moveNext and all possible moves of unassigned agents
        :param other:
        :return:
        """
        if other is None or not isinstance(other, ODState):
            return False
        if not super(ODState, self).__eq__(other):
            return False
        if self._moveNext != other.getMoveNext():
            return False
        # if other is not None and super(ODState, self).__eq__(other) and \
        #                 self._moveNext == other.getMoveNext() and self._extraPins != other.extraPins():
        #     return False

        if self._moveNext == 0:
            return True
        # if self._direction != other.getDir():
        #     return False

        # check if possible moves for rest agents are the same
        # selfAgents = self.predecessor().getSingleAgents()[0: self._moveNext]
        # RestrictSelf = [x.getCoord().getNode() for x in selfAgents]
        # otherAgents = other.predecessor().getSingleAgents()[0: self._moveNext]
        # RestrictOther = [x.getCoord().getNode() for x in otherAgents]
        #
        # for i in range(self._moveNext, len(self._singleAgents)):
        #     agentNode = self._singleAgents[i].getCoord().getNode()
        #     if not self._isSamePostMove(agentNode, RestrictSelf, RestrictOther):
        #         return False
        # return True
        return str(self._restrictDir) == str(other.getRestricDir())

    def __hash__(self):
        return super(ODState, self).__hash__() + 23 * hash(self._moveNext) + hash(str(self._restrictDir))

    # def __str__(self):
    #     res = "gValue: {0}, hValue: {1}, violations: {2}, electrode: {3}, ".format(self._gValue, self._hValue,
    #                                                                                self._conflictViolations,
    #                                                                                self._usedElectrode)
    #     # res += "moveNext: {0}, ".format(self._moveNext)
    #     # res += "dir: {0}, ".format(self._direction)
    #     for singleState in self._singleAgents:
    #         res += str(singleState)
    #         res += '; '
    #     return res

    # def __lt__(self, other):
    #     """Compare two state for priority queue
    #     Breaking tie considers smaller hValue
    #     :param other: same candidate state
    #     :return:
    #     """
    #     """
    #     TODO: break tie considering _sharedNodesm (visitTable)
    #         ; and future violations (CAT)
    #     """
    #     assert other is not None, "State can not compare with None type"
    #     if other.hValue() is None or self.hValue() is None:
    #         print("set Heuristic Value first")
    #         return None
    #     dif = self.gValue() - other.gValue() + self.hValue() - other.hValue()
    #     # breaking tie considering hValue
    #     if dif == 0:
    #         # return self.hValue() - other.hValue() < 0
    #         return self.conflictViolations() - other.conflictViolations() < 0
    #     else:
    #         return dif < 0
    #         # return dif < 0

def main():
    import sys
    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    agent1 = [Agent(0, (9, 6), (9, 3)), Agent(1, (9, 3), (9, 6))]
    problem1 = ProblemInstance(graph1, agent1)

    print("=== test constructor ===")
    s1 = ODState.fromProblemIns(problem1)
    s1.setHeuristic(problem1)
    print(s1)
    assert s1.predecessor() is None
    assert s1.getPreState() is None
    assert s1.isStandard()
    assert s1.isValid(s1)

    # print("=======  instance dict ========")
    # for item in s1.__dict__:
    #     print item
    #
    # print("========  class dict =========")
    # for item in s1.__class__.__dict__:
    #     print item

    print("====  test expand function ====")
    expandStates = s1.expand(problem1)
    map(lambda x: x.setHeuristic(problem1), expandStates)
    # for s in expandStates:
    #     print (s)
    # print()
    print("memory: {0}".format(sys.getsizeof(expandStates[0])))
    expandStates2 = expandStates[0].expand(problem1)
    map(lambda x: x.setHeuristic(problem1), expandStates2)
    # for s in expandStates2:
    #     print (s)

    print("=== test predecessor ===")
    assert expandStates[1].predecessor() == s1

    print("=== test lt ===")
    # assert s1 < expandStates[0] and expandStates[1] < expandStates[0], "lt test fail"

    print("==== test eq function =====")
    agent2 = [Agent(0, (5, 6), (6, 10)), Agent(1, (3, 6), (12, 3))]
    problem2 = ProblemInstance(graph1, agent2)
    problem2.plotProblem()

    problem3 = ProblemInstance(graph1, [Agent(0, (7, 6), (6, 10)), Agent(1, (3, 6), (12, 3))])
    problem3.plotProblem()

    p0 = ODState.fromProblemIns(problem2)
    p1 = p0.expand(problem2)[2]

    p00 = ODState.fromProblemIns(problem3)
    p11 = p00.expand(problem2)[4]

    # print(p1.getRestricDir())
    # print(p11.getRestricDir())
    assert p1 != p11

    agent2 = [Agent(0, (5, 6), (6, 10)), Agent(1, (2, 7), (12, 3))]
    problem2 = ProblemInstance(graph1, agent2)
    problem2.plotProblem()
    problem3 = ProblemInstance(graph1, [Agent(0, (7, 6), (6, 10)), Agent(1, (2, 7), (12, 3))])

    p0 = ODState.fromProblemIns(problem2)
    p1 = p0.expand(problem2)[2]

    p00 = ODState.fromProblemIns(problem3)
    p11 = p00.expand(problem2)[4]
    print(p1.getRestricDir())
    print(p11.getRestricDir())
    assert p1 == p11


    print("=== test isValid ===")

    print("=== test agentNode.getFour ====")

if __name__ == '__main__':
    main()


