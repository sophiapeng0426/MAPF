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

    @classmethod
    def fromProblemIns(cls, problemInstance):
        # mstate = super(ODState, cls).fromProblemIns(problemInstance)
        numAgents = len(problemInstance.getAgents())
        singleAgents = []
        for i in range(numAgents):
            singleAgents.append(SingleAgentState.fromProblemIns(i, problemInstance))
        direction = [-1 for i in range(len(singleAgents))]
        return cls(None, singleAgents, problemInstance, 0, None, direction)

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
            mAgents = self._singleAgents[:] ## copy every singleAgent state??
            mAgents[self._moveNext] = s

            if self._moveNext == 0:   ## self is standard state
                newODStates.append(ODState(self, mAgents, problemInstance, self.getNewMoveNext(),
                                           self, self._updatedDir(s)))
            else:
                newODStates.append(ODState(self.predecessor(), mAgents, problemInstance,
                                           self.getNewMoveNext(), self, self._updatedDir(s)))
        validStates = filter(lambda x: self.isValid(x), newODStates)
        return validStates

    def isValid(self, s, StaticOnly = False):
        """ check OD state valid
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

    def __eq__(self, other):
        """TODO: define equal intermediate state => same post move position
        Compare: each single agent: ID, getCoord.getNode (type and position)
                 moveNext and direction
        :param other:
        :return:
        """
        if other is None or not isinstance(other, ODState):
            return False
        if not super(ODState, self).__eq__(other):
            return False
        if self._moveNext != other.getMoveNext():
            return False
        if self._direction != other.getDir():
            return False
        return True

    def __hash__(self):
        return super(ODState, self).__hash__() + 23 * (hash(self._moveNext) + 23 * hash(tuple(self._direction)))

    def __str__(self):
        res = "gValue: {0}, ".format(self._gValue) + "hValue: {0}, ".format(self._hValue)
        res += "moveNext: {0}, ".format(self._moveNext)
        res += "dir: {0}, ".format(self._direction)
        for singleState in self._singleAgents:
            res += str(singleState)
            res += '; '
        return res

    # def __lt__(self, other):
    #     """
    #     TOBE decide if necessary
    #     :param other:
    #     :return:
    #     """


def main():
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    agent1 = [Agent(0, (9, 5), (9, 3)), Agent(1, (9, 3), (9, 5))]
    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    s1 = ODState.fromProblemIns(problem1)
    print("=== test constructor, heuristic ===")
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
    for s in expandStates:
        print (s)
    print()

    expandStates2 = expandStates[0].expand(problem1)
    map(lambda x: x.setHeuristic(problem1), expandStates2)
    for s in expandStates2:
        print (s)

    print("=== test predecessor ===")
    assert expandStates[1].predecessor() == s1

    print("=== test lt ===")
    # assert s1 < expandStates[0] and expandStates[1] < expandStates[0], "lt test fail"

    print("==== test eq function =====")
    # p1 = ODState(s1, s1.getSingleAgents(), problem1, 0, s1, [1, -1, -1])
    # assert p1 != s1
    # p1 = ODState(s1, s1.getSingleAgents(), problem1, 0, s1, [-1, -1, -1])
    # assert p1 == s1

    print("=== test isValid ===")


if __name__ == '__main__':
    main()


