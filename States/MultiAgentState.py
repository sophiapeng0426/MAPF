from State import State
from SingleAgentState import SingleAgentState
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Node import Node
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.ProblemMap import ProblemMap


class MultiAgentState(State):
    def __init__(self, backPointer, singleAgents, problemInstance):
        """
        :param backPointer:
        :param singleAgents: List of singleAgentStates
        :param problemInstance:
        """
        # :param costFunction:
        assert isinstance(backPointer, State) or backPointer is None
        assert isinstance(problemInstance, ProblemInstance)
        assert isinstance(singleAgents, list)

        super(MultiAgentState, self).__init__(backPointer)
        self._singleAgents = singleAgents
        self.calculateCost(problemInstance)

    @classmethod
    def fromProblemIns(cls, problemInstance):
        numAgents = len(problemInstance.getAgents())
        singleAgents = []
        for i in range(numAgents):
            singleAgents.append(SingleAgentState.fromProblemIns(i, problemInstance))
        return cls(None, singleAgents, problemInstance)

    def getSingleAgents(self):
        return self._singleAgents

    def calculateCost(self, problemInstance):
        self._gValue = 0
        if self.predecessor() is None:
            return
        for singleState in self._singleAgents:
            self._gValue += singleState.gValue()

    def setHeuristic(self, problemInstance):
        self._hValue = 0
        for singleState in self._singleAgents:
            singleState.setHeuristic(problemInstance) # first set heuristic for each singleAgentState
            self._hValue += singleState.hValue()

    def goalTest(self, problemInstance):
        for singleState in self._singleAgents:
            if not singleState.goalTest(problemInstance):
                return False
        return True

    def expand(self, problemInstance):
        """
        :param problemInstance:
        :return:
        """
        candidateList = []
        for singleState in self._singleAgents:
            singleStateNeighborList =  singleState.expand(problemInstance)
            if len(singleStateNeighborList) == 0:
                # print("No candiate singleState for state: {0}".format(singleState))
                return []
            candidateList.append(singleStateNeighborList) # every candidate list is none empty
        candidateStateList = self.listProduct(candidateList)

        validStates = []
        for multiState in candidateStateList:
            if self.isValid(multiState):  # a shallow copy to prevent change of multistate
                validStates.append(MultiAgentState(self, multiState, problemInstance))

        return validStates

    def isValid(self, mstate):
        if len(mstate) == 1:
            return True  # only one agent
        for s in mstate:
            assert isinstance(s, SingleAgentState)
            left = [item.getCoord().getNode() for item in mstate] # copy to prevent changing of mstate
            left.remove(s.getCoord().getNode())
            staticCons = s.getCoord().getNode().get_Eight()

            if s.isRoot():
                prohibit = set(staticCons)
            else:
                dynamicCons = s.predecessor().getCoord().getNode().get_Eight()
                prohibit = set(staticCons) | set(dynamicCons)
            prohibit.add(s)

            if not prohibit.isdisjoint(set(left)):
                # print("invalid state: {0} ".format(mstate))
                return False
        return True

    def listProduct(self, alist):
        """
        [[s1 s2 s3], [m1 m2]] every element is None-empty list
        [[si s2], []] => []
        [[]] => [[]]
        catesian product of list elements
        :param alist: list of list of elements [[s1 s2 s3] [m1 m2]]
        :return: list of lists of elements
        """
        assert len(alist) >= 1, "Cannot product None (list)"

        if len(alist) == 1:
            res = []
            for element in alist[0]:
                res.append([element])
            return res

        res = []
        for comb in self.listProduct(alist[0:-1]):
            for element in alist[-1]:
                res.append(comb + [element])
        return res

    def __eq__(self, other):
        """
        each single agent: ID, getCoord.getNode (type and p
        :param other:
        :return:
        """
        if (other is None) or (not isinstance(other, MultiAgentState)):
            return False
        return self._singleAgents == other.getSingleAgents()

    def __hash__(self):
        prime = 31
        res = 1
        if self._singleAgents is None or len(self._singleAgents) == 0:
            return 0
        for singleAgent in self._singleAgents:
            res = prime * res + hash(singleAgent) * prime
        return res

    def __str__(self):
        res = "gValue: {0}, ".format(self._gValue) + "hValue: {0}, ".format(self._hValue)
        for singleState in self._singleAgents:
            res += str(singleState)
            res += '; '
        return res

def main():
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    agent1 = [Agent(0, (9, 4), (12, 12)), Agent(1, (13, 13), (9, 2))]
    problem1 = ProblemInstance(graph1, agent1)

    s1 = MultiAgentState.fromProblemIns(problem1)
    print("=== test constructor, heuristic ===")
    s1.setHeuristic(problem1)
    print(s1)

    print("====  test expand function ====")
    expandStates = s1.expand(problem1)
    print(len(expandStates))
    # for s in expandStates:
    #     print(s)

    print("=== test setHeuristic/ lt function ===")
    expand1 = expandStates[1] # 0 is stay
    expand1.setHeuristic(problem1)
    print(expand1)
    assert not s1 < expand1, "lt test fail"

    print("==== test eq function =====")
    s3 = SingleAgentState.fromProblemIns(0, problem1)
    assert s1 != s3, "eq test1 fail"

    p2 = ProblemInstance(graph1, [Agent(0, (9, 4), (5, 5)), Agent(1, (13, 13), (9, 2))])
    s2 = MultiAgentState.fromProblemIns(p2)
    assert s1 == s2, "eq test2 fail"
    s2.setHeuristic(p2)
    assert s1 == s2, "eq test2 fail"

    print("=== test isValid ===")
    graph3 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    agent3 = [Agent(0, (9, 4), (9, 6)), Agent(1, (9, 6), (9, 4))]
    problem3 = ProblemInstance(graph3, agent3)
    problem3.plotProblem()
    s2 = MultiAgentState.fromProblemIns(problem3)





if __name__ == '__main__':
    main()






