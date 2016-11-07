from MultiAgentState import MultiAgentState
from SingleAgentState import SingleAgentState
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.ProblemMap import ProblemMap


class ODState(MultiAgentState):
    def __init__(self, backPointer, singleAgents, problemInstance, moveNext, preState, direction):
        """
        :param backPointer:
        :param singleAgents: []
        :param problemInstance:
        :param moveNext: integer
        :param preState: previous intermediate state
        :param Dir: initialized with [-1 -1 ..]
        """
        super(ODState, self).__init__(backPointer, singleAgents, problemInstance)
        self._moveNext = moveNext
        self._preState = preState
        self._direction = direction
        # no restriction by previous
        self._restrictDir = [[] for i in range(0, len(self._singleAgents))]
        self._updateRestrictDir()

    @classmethod
    def fromProblemIns(cls, problemInstance):
        # mstate = super(ODState, cls).fromProblemIns(problemInstance)
        numAgents = len(problemInstance.getAgents())
        singleAgents = []
        for i in range(numAgents):
            agentId = problemInstance.getAgents()[i].getId()
            singleAgents.append(SingleAgentState.fromProblemIns(agentId, problemInstance))

        direction = [None for i in range(len(singleAgents))]
        return cls(None, singleAgents, problemInstance, 0, None, direction)

    def _updateRestrictDir(self):
        """ update self.allowDir using predecessor
        """
        if self.predecessor() is None or self._moveNext == 0:
            return
        for i in range(self._moveNext, len(self._singleAgents)):
            restrict = [x.getCoord().getNode() for x in self.predecessor().getSingleAgents()]
            del restrict[i]  # do not count itself
            possibleNodes = self._singleAgents[i].getCoord().getNode().get_Four()
            for direction, nextNode in enumerate(possibleNodes):
                if (nextNode is not None) and (not set(nextNode.get_Eight()).isdisjoint(restrict)):
                    self._restrictDir[i].append(direction)

    def updateVisitTable(self, table):
        if table is not None:
            self._visitTable = table.copy()
            # print("original table: {0}".format(self._visitTable))

        if self.isStandard():
            updateRange = len(self._singleAgents)
        else:
            updateRange = self._moveNext

        for singleAgent in self._singleAgents[0: updateRange]:
            singleAgent.addSingleAgent(self._visitTable)
        self._extraPins = self._visitTable.getExtraPins()

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
                newODStates.append(ODState(self, mAgents, problemInstance, self.getNewMoveNext(),
                                           self, self._updatedDir(s)))
            else:
                newODStates.append(ODState(self.predecessor(), mAgents, problemInstance,
                                           self.getNewMoveNext(), self, self._updatedDir(s)))
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

    def isStandard(self):
        return self._moveNext == 0

    def _updatedDir(self, newState):
        """ get moving direction of current state
        :return: direction
        """
        currentState = self._singleAgents[self._moveNext]
        newDirection = self._direction[:]

        pos1 = currentState.getCoord().getNode().getPosition()
        pos2 = newState.getCoord().getNode().getPosition()
        res = -1
        if pos1[0] == pos2[0] and pos1[1] == pos2[1]:
            res = 0
        elif pos1[1] - pos2[1] == 1:
            res = 1
        elif pos1[0] - pos2[0] == -1:
            res = 2
        elif pos1[1] - pos2[1] == -1:
            res = 3
        elif pos1[0] - pos2[0] == 1:
            res = 4
        newDirection[self._moveNext] = res
        return newDirection

    def goalTest(self, problemInstance):
        if not self.isStandard():
            return False
        return super(ODState, self).goalTest(problemInstance)

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

    def __str__(self):
        res = "gValue: {0}, ".format(self._gValue) + "hValue: {0}, ".format(self._hValue) + \
              "extraPins: {0}, ".format(self._extraPins)
        res += "moveNext: {0}, ".format(self._moveNext)
        res += "dir: {0}, ".format(self._direction)
        for singleState in self._singleAgents:
            res += str(singleState)
            res += '; '
        return res


def main():
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
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


