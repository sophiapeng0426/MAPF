from GeneticAStar import GeneticAStar

# from SingleAgent.Utilities.Node import Node
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.ProblemMap import ProblemMap
from SingleAgent.States.SingleAgentState import SingleAgentState


class SingleAgentAStar(GeneticAStar):
    def __init__(self):
        super(SingleAgentAStar, self).__init__()

    def getPath(self):
        """
        :return: list of states as path
        """
        if self._goalState is None:
            print("No path found")

        pathList = []
        s = self._goalState
        while s is not None:
            pathList.append(s)
            s = s.predecessor()
        return pathList[::-1]

    def printPath(self):
        """
        :return: print list of states as path
        """
        pathList = self.getPath()
        if len(pathList) == 0:
            print("No path to print")
        for s in pathList:
            print(s)

    def visualizePath(self, problemInstance):
        """
        TODO: print path in map
        :param problemInstance:
        :return:
        """

    def createRoot(self, problemInstance):
        assert len(problemInstance.getAgents()) == 1, "Not a singleAgent problemInstance"
        return SingleAgentState.fromProblemIns(0, problemInstance)


def main():
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    agent1 = [Agent(0, (2, 2), (5, 5))]  # can only test single state
    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    solver1 = SingleAgentAStar()
    solver1.solve(problem1)

    solver1.printPath()

    print("=== test root state")


if __name__ == "__main__":
    main()


