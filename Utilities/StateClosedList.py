from IClosedList import ICLosedList
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Node import Node
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.ProblemMap import ProblemMap


class StateClosedList(ICLosedList):
    def __init__(self):
        self._closeSet = dict()

    def contains(self, state):
        from SingleAgent.States.State import State
        assert isinstance(state, State), "ClosedList contains requires state class"
        if state not in self._closeSet:
            return False

        preState = self._closeSet[state]
        if state.gValue() < preState.gValue():
            del self._closeSet[preState]
            return False
        elif state.gValue == preState.gValue():
            if state.conflictViolations() < preState.conflictViolations():
                del self._closeSet[preState]
                return False
            elif state.conflictViolations() == preState.conflictViolations():
                if state.usedElectrode() < preState.usedElectrode():
                    del self._closeSet[preState]
                    return False
        return True

    def add(self, state):
        """ rewrite state
        """
        from SingleAgent.States.State import State
        assert isinstance(state, State), "ClosedList add requires state class"
        self._closeSet[state] = state

    def clear(self):
        self._closeSet.clear()

    def getClosedList(self):
        return self._closeSet

    def empty(self):
        return len(self._closeSet) == 0

    def size(self):
        return len(self._closeSet)

    def __str__(self):
        res = ''
        for key, value in self._closeSet.items():
            res += str(key) + '\n'
        return res


def main():
    from SingleAgent.States.SingleAgentState import SingleAgentState
    from SingleAgent.States.MultiAgentState import MultiAgentState

    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    agent1 = [Agent(0, (9, 4), (12, 12))]  #  can only test single state
    problem1 = ProblemInstance(graph1, agent1)

    s1 = SingleAgentState(0, Node((9, 4)), None, problem1)
    s2 = SingleAgentState(0, Node((9, 3)), s1, problem1)
    closeList = StateClosedList()
    closeList.add(s1)
    closeList.add(s2)
    assert closeList.contains(s1) and closeList.contains(s2), "add fail"

    s3 = SingleAgentState(0, Node((9, 4)), s1, problem1)
    assert closeList.contains(s3) == True

    s2_g = SingleAgentState(0, Node((9, 3)), None, problem1)
    assert closeList.contains(s2_g) == False, "gValue check fail"

    closeList.clear()
    assert len(closeList.getClosedList()) == 0, "clear() fail"

    print("=== test multiagent state ===")
    agent2 = [Agent(0, (9, 4), (12, 12)), Agent(1, (13, 13), (9, 2))]
    problem2 = ProblemInstance(graph1, agent2)
    m1 = MultiAgentState.fromProblemIns(problem2)
    m1.setHeuristic(problem2)
    m1._gValue = 2
    print(m1)
    closeList.add(m1)
    assert closeList.contains(m1)
    m2 = MultiAgentState.fromProblemIns(problem2)

    m2.setHeuristic(problem2)
    print(m2)
    assert closeList.contains(m2) == False
    assert len(closeList.getClosedList()) == 0







if __name__ == '__main__':
    main()


