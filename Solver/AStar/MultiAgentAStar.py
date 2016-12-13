from GeneticAStar import GeneticAStar
from SingleAgent.States.MultiAgentState import MultiAgentState


class MultiAgentAStar(GeneticAStar):
    def __init__(self):
        super(MultiAgentAStar, self).__init__()

    def createRoot(self, problemInstance):
        if not self._ignoreCost:
            assert len(problemInstance.getAgents()) >= 1, "Need agent"
            return MultiAgentState.fromProblemIns(problemInstance)
        else:
            assert False, 'Not implement violation first.'

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

    # graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    # problem1 = ProblemInstance(graph1, agent1)
    # problem1.plotProblem()
    #
    # startTime = time.time()
    # solver1 = MultiAgentAStar()
    # solver1.solve(problem1)
    # print("solver time: {0} ".format(time.time() - startTime))
    #
    # solver1.printPath()
    # solver1.visualizePath(problem1)

    graph2 = Graph(ProblemMap(14, {(2, 5): (5, 2),
                                   (0, 10): (5, 16),
                                   (7, 1): (2, 5),
                                   (8, 6): (4, 2)
                                   }))

    agent2 = [Agent(0, (0, 4), (0, 9)),
        Agent(1, (0, 6), (3, 0)),
        Agent(2, (0, 2), (9, 4))
        # Agent(3, (13, 6), (4, 2)),
        # Agent(4, (13, 0), (1, 3)),
        # Agent(5, (6, 9), (12, 7))
    ]
    agent3 = [#Agent(0, (0, 4), (0, 9)),
              # Agent(1, (0, 6), (3, 0)),
              # Agent(0, (0, 2), (9, 4)),
              Agent(0, (13, 6), (4, 2)),
              Agent(1, (13, 0), (1, 3))
              # Agent(5, (6, 9), (12, 7))
              ]
    testProblem1 = ProblemInstance(graph2, agent2)
    testProblem2 = ProblemInstance(graph2, agent3)
    testProblem1.plotProblem()
    print()
    testProblem2.plotProblem()

    startTime = time.time()
    solver1 = MultiAgentAStar()
    solver1.solve(testProblem1)
    print("solver time: {0} ".format(time.time() - startTime))
    solver1.printPath()
    solver1.visualizePath(testProblem1)

    solver2 = MultiAgentAStar()
    solver2.getUsedTable().addPath(solver1.getPath(), 0)
    solver2.getCAT().addPath(solver1.getPath(), 0)
    # for key, value in solver2.getCAT().groupOccupantTable().items():
    #     print("{0}, {1}".format(key, value))
    # print()
    # for key, value in solver2.getCAT().agentDestination().items():
    #     print("{0}, {1}".format(key, value))
    # solver2.init(testProblem2) # init heuristic
    # root = MultiAgentState.fromProblemIns(testProblem2)
    # root.setHeuristic('trueDistance', solver2.getHeuristicTable())
    # print(root)
    # root.updateUsedElectrode(solver2.getUsedTable(), testProblem2.getGraph().getSize())
    # root.updateCATViolations(solver2.getCAT())
    # print(root)

    solver2.solve(testProblem2)
    solver2.printPath()
    solver2.visualizePath(testProblem2)
    # solver1.solve(testProblem2)



if __name__ == "__main__":
    main()