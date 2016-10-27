import copy
import time
from GeneticAStar import GeneticAStar
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.ProblemMap import ProblemMap
from SingleAgent.States.MultiAgentState import MultiAgentState

class MultiAgentAStar(GeneticAStar):
    def __init__(self):
        super(MultiAgentAStar, self).__init__()

    def createRoot(self, problemInstance):
        assert len(problemInstance.getAgents()) >= 1, "Need agent"
        return MultiAgentState.fromProblemIns(problemInstance)

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
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    startTime = time.time()
    solver1 = MultiAgentAStar()
    solver1.solve(problem1)
    print("===== solver time =======")
    print(time.time() - startTime)

    solver1.printPath()
    solver1.visualizePath(problem1)
    # problem1.plotProblem()

if __name__ == "__main__":
    main()