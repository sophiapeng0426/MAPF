from GeneticAStar import GeneticAStar


class BreadthFirstSearch(GeneticAStar):
    def __init__(self):
        super(BreadthFirstSearch, self).__init__()

    def simpleInit(self):
        if self._ignoreCost:
            self.setIgnore(False)

        while not self._openList.empty():
            self._openList.get()
        self._closeList.clear()
        self._goalState = None

    def createRoot(self, problemInstance):
        from SingleAgent.States.SingleAgentState import SingleAgentState
        assert len(problemInstance.getAgents()) == 1, 'breadthfirst input > 1 agent problemInstance'
        agentid = problemInstance.getAgents()[0].getId()
        return SingleAgentState.fromProblemIns(agentid, problemInstance)

    def simpleSolve(self, problemInstance):
        self.simpleInit()

        root = self.createRoot(problemInstance)
        self.setConsHeuristic(root, 0)

        self._openList.put(root)
        self._closeList.add(root)

        while not self._openList.empty():
            currentState = self._openList.get()
            self._closeList.add(currentState)

            potentialStates = currentState.expand(problemInstance)
            for s in potentialStates:
                self.setConsHeuristic(s, 0)
                if not self._closeList.contains(s):
                    self._openList.put(s)
                    self._closeList.add(s)
        return True

    def setConsHeuristic(self, s, cons):
        s.setHeuristic('constant', cons)

    def finalList(self):
        position = []
        distance = []
        for state, _ in self.closeList().getClosedList().items():
            position.append(state.getCoord().getNode().getPosition())
            distance.append(state.gValue())
        return position, distance


def main():
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap

    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    agent1 = [Agent(0, (9, 4), (12, 12))]

    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    solver1 = BreadthFirstSearch()
    solver1.simpleSolve(problem1)
    solver1.finalList()


if __name__ == '__main__':
    main()