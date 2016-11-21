from GeneticAStar import GeneticAStar
from SingleAgent.States.MultiAgentState import MultiAgentState


class MultiAgentAStar(GeneticAStar):
    def __init__(self):
        super(MultiAgentAStar, self).__init__()

    def createRoot(self, problemInstance):
        assert len(problemInstance.getAgents()) >= 1, "Need agent"
        return MultiAgentState.fromProblemIns(problemInstance)

    def visualizePath(self, problemInstance):
        """
        TODO: print path in map
        :param problemInstance:
        :return:
        """
        import copy
        # deep copy to prevent changing of map content
        mapContent = copy.deepcopy(problemInstance.getMap().getContent())
        pathList = self.getPath()
        for state in pathList:
            for singleState in state.getSingleAgents():
                x = singleState.getCoord().getNode().getPosition()[0]
                y = singleState.getCoord().getNode().getPosition()[1]
                mapContent[y][x] = str(singleState.getAgentId())
        for i in mapContent:
            print(' '.join(i))


def main():
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap
    import time

    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    startTime = time.time()
    solver1 = MultiAgentAStar()
    solver1.solve(problem1, None)
    print("solver time: {0} ".format(time.time() - startTime))

    solver1.printPath()
    solver1.visualizePath(problem1)
    # problem1.plotProblem()

if __name__ == "__main__":
    main()