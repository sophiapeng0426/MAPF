from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Solver.AStar.BreadthFirstSearch import BreadthFirstSearch
from SingleAgent.Utilities.Util2 import Util2


class TDHeuristic(object):
    def __init__(self, problemInstance):
        nAgent = len(problemInstance.getAgents())
        self._nsize = problemInstance.getGraph().getSize()
        self._idTable = {}

        # lookupTable[self._idTable[ID]][index] is the distance
        self._lookupTable = [[0 for i in range(self._nsize * self._nsize)] for j in range(nAgent)]
        self._init(problemInstance)
        print("TDHeuristic initialized, size: {0} x {1}".format(len(self._lookupTable), len(self._lookupTable[0])))

    def _init(self, problemInstance):
        """
        ID needs to be ranged from 0 to n
        :param problemInstance:
        :return:
        """
        goals = problemInstance.getGoals()

        k = 0
        for ID, goalPos in goals.items():
            newagent = Agent(ID, goalPos, None)  # fake goal position
            newProblem = ProblemInstance(problemInstance.getGraph(), [newagent])

            bfs = BreadthFirstSearch()
            bfs.simpleSolve(newProblem)
            position, distance = bfs.finalList()
            for i in range(len(position)):
                index = Util2().posToIndex(position[i], self._nsize)
                self._lookupTable[k][index] = distance[i]
                self._idTable[ID] = k
            k += 1

    def trueDistance(self, agentId, pos):
        index = Util2().posToIndex(pos, self._nsize)
        return self._lookupTable[self._idTable[agentId]][index]


def main():
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.ProblemMap import ProblemMap

    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    agent1 = [Agent(0, (9, 4), (12, 12)), Agent(1, (13, 13), (9, 2))]
    problem1 = ProblemInstance(graph1, agent1)
    heu = TDHeuristic(problem1)
    print(isinstance(heu, TDHeuristic))


if __name__ == '__main__':
    main()
