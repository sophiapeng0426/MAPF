from GeneticAStar import GeneticAStar
from SingleAgent.States.SingleAgentState import SingleAgentState


class SingleAgentAStar(GeneticAStar):
    def __init__(self):
        super(SingleAgentAStar, self).__init__()

    def createRoot(self, problemInstance):
        if not self._ignoreCost:
            assert len(problemInstance.getAgents()) == 1, "Not a singleAgent problemInstance"
            return SingleAgentState.fromProblemIns(0, problemInstance)
        else:
            assert False, 'Not implement violation first.'


def main():
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap

    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    agent1 = [Agent(0, (2, 2), (5, 5))]  # can only test single state
    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    solver1 = SingleAgentAStar()
    solver1.solve(problem1, None)

    solver1.printPath()

    print("=== test root state")


if __name__ == "__main__":
    main()


