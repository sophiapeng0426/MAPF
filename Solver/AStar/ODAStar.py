from GeneticAStar import GeneticAStar
from SingleAgent.States.ODState import ODState
from SingleAgent.States.SingleAgentState import SingleAgentState


class ODAStar(GeneticAStar):
    def __init__(self):
        """
        init _openList, _closeList and _goalState
        """
        super(ODAStar, self).__init__()

    def createRoot(self, problemInstance):
        assert len(problemInstance.getAgents()) >= 1, "Need agent"
        # if len(problemInstance.getAgents()) == 1:
        #     return SingleAgentState.fromProblemIns(problemInstance.getAgents()[0].getId(), problemInstance)
        # else:
        return ODState.fromProblemIns(problemInstance)

    # def solve(self, problemInstance):
    #     """
    #     :param problemInstance:
    #     :return:
    #     """
    #     assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
    #     self.init(problemInstance)   # used previous init from GeneticAStar
    #     root = self.createRoot(problemInstance)
    #     root.setHeuristic(problemInstance)
    #     # print("Root state: {0}".format(root))
    #     self._openList.put(root)
    #
    #     while not self._openList.empty():
    #         if self._openList.qsize() % 100 == 0:
    #             print("OpenList size: {0}".format(self._openList.qsize()))
    #
    #         currentState = self._openList.get()
    #
    #         if self.isGoal(currentState, problemInstance):
    #             self._goalState = currentState
    #             return True
    #
    #         potentialStates = currentState.expand(problemInstance)
    #         if len(potentialStates) == 0:
    #             pass
    #         elif potentialStates[0].isStandard():
    #             for s in potentialStates:
    #                 if not self._closeList.contains(s):
    #                     s.setHeuristic(problemInstance)
    #                     self._openList.put(s)
    #         else:
    #             for s in potentialStates:
    #                 s.setHeuristic(problemInstance)
    #                 self._openList.put(s)
    #
    #         if currentState.isStandard():
    #             self._closeList.add(currentState)
    #
    #         # for s in potentialStates:
    #         #     if not self._closeList.contains(s):
    #         #         try:
    #         #             s.setHeuristic(problemInstance)
    #         #         except:
    #         #             print ("cannot set hValue for state : {0}".format(s))
    #         #         self._openList.put(s)
    #         #         self._closeList.add(s)
    #         # self._closeList.add(currentState)

    # def init(self, problemInstance):
    #     """ get cleaned queue and closeList
    #     :param problemInstance:
    #     :return:
    #     """
    #     """
    #     TODO: implement initialization for reservation and heuristics
    #     """
    #     while not self._openList.empty():
    #         self._openList.get()
    #     self._closeList.clear()
    #     self._goalState = None

    def visualizePath(self, problemInstance):
        """ print path in map
        :param problemInstance:
        :return:
        """
        import copy
        # deep copy to prevent changing of map content
        mapContent = copy.deepcopy(problemInstance.getMap().getContent())
        pathList = self.getPath()
        for state in pathList:
            if isinstance(state, ODState):
                for singleState in state.getSingleAgents():
                    x = singleState.getCoord().getNode().getPosition()[0]
                    y = singleState.getCoord().getNode().getPosition()[1]
                    mapContent[y][x] = str(singleState.getAgentId())
            elif isinstance(state, SingleAgentState):
                x = state.getCoord().getNode().getPosition()[0]
                y = state.getCoord().getNode().getPosition()[1]
                mapContent[y][x] = str(state.getAgentId())
        for i in mapContent:
            print(' '.join(i))

def main():
    import time
    import os
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap
    from SingleAgent.Solver.AStar.MultiAgentAStar import MultiAgentAStar

    # ============= old case ===========
    # graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    # # agent1 = [Agent(0, (9, 6), (9, 2))]
    # problem1 = ProblemInstance(graph1, agent1)
    # problem1.plotProblem()
    #
    # startTime = time.time()
    # solver1 = ODAStar()
    # solver1.solve(problem1, None)
    # print("solver time: {0} ".format(time.time() - startTime))
    #
    # solver1.printPath()
    # solver1.visualizePath(problem1)
    # problem1.plotProblem()

    # ============= test cases ===========
    # fileroot = '/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/DMFB'
    # # filename = 'benchmark_2_minsik'
    # # filename = 'in-vitro.3'
    # # filename ='in-vitro_2.3'
    # # filename = 'protein.9'
    # filename = 'in-vitro_2.5'
    # testProblem = generateProblem(os.path.join(fileroot, filename))
    # testProblem.plotProblem()
    #
    # startTime = time.time()
    # solver = ODAStar()
    # solver.solve(testProblem)
    # solver.printPath()
    # ============== end ===================

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
    agent3 = [  # Agent(0, (0, 4), (0, 9)),
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

    solver2 = ODAStar()
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