import copy
import time

from SingleAgent.Solver.AStar.ODAStar import ODAStar
from SingleAgent.Solver.ConstraintSolver import ConstraintSolver
from SingleAgent.Solver.Utils import Util
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.ProblemMap import ProblemMap
from SingleAgent.Utilities.Util2 import Util2


class IDSolver(ConstraintSolver):
    def __init__(self, solver):
        """ _reservation, _cat
            _pathList: n
            _problemList: n
        """
        super(IDSolver, self).__init__()
        self._pathList = []
        self._problemList = []
        self._solver = solver
        self._resPins = None

    def solve(self, problemInstance):
        """simple independent detection
        """
        initialProblem = problemInstance
        if not self.populatePath(initialProblem):
            return False

        index = 0
        while index < len(self._pathList):
            # print("Index :{0}".format(index))
            conflict = Util().conflict(index, 0, self._pathList)
            if conflict is None:
                index += 1
            else:
                id1 = conflict.getGroup1()
                id2 = conflict.getGroup2()
                print("resolve conflict: {0}, {1}".format(id1, id2))
                # update _problemList[id1]
                self._problemList[id1].join(self._problemList[id2])

                otherPathList = self._pathList[:]
                otherPathList[id1] = None
                otherPathList[id2] = None
                if not self._solver.solve(self._problemList[id1], otherPathList):
                    print("fail to find new path")
                    return False
                self._pathList[id1] = self._solver.getPath()
                self._problemList[id2] = None
                self._pathList[id2] = None
                # print("ProblemList: {0}".format(self._problemList))
        return True

    def populatePath(self, problemInstance):
        for agent in problemInstance.getAgents():
            # problemInstance requires _singleAgents a list!!
            self._problemList.append(ProblemInstance(problemInstance.getGraph(), [agent]))

        for problem in self._problemList:
            if not self._solver.solve(problem, None):
                return False
            self._pathList.append(self._solver.getPath())
        return True

    def solver(self):
        return self._solver

    def paths(self):
        return self._pathList

    def problems(self):
        return self._problemList

    def getPath(self):
        """ get list of states as path"""
        return Util().mergePaths(self._pathList)

    def countPins(self):
        self._resPins = Util().countPins(self._pathList)
        return self._resPins

    def printPath(self):
        """print paths"""
        for t, singleAgents in enumerate(self.getPath()):
            strout = "TimeStep: {0}".format(t)
            gValue = 0
            hValue = 0

            for singleAgent in singleAgents:
                gValue += singleAgent.gValue()
                hValue += singleAgent.hValue()

                strout +='; ' + str(singleAgent)
            strout += '; gValue: {0}; '.format(gValue) + 'hValue: {0}.'.format(hValue)
            print(strout)

    def visualizePath(self, problemInstance):
        """ print path in map
        :param problemInstance:
        :return:
        """
        # deep copy to prevent changing of map content
        mapContent = copy.deepcopy(problemInstance.getMap().getContent())
        pathList = self.getPath()
        for singleAgents in pathList:
            for singleState in singleAgents:
                x = singleState.getCoord().getNode().getPosition()[0]
                y = singleState.getCoord().getNode().getPosition()[1]
                mapContent[y][x] = str(singleState.getAgentId())
        for i in mapContent:
            print(' '.join(i))

    def correctcheck(self, pathList):
        """ Check if fluid constraints are violated
        :param pathList:
        :return:
        """
        for state in pathList:
            for i in range(len(state)):
                for j in range(i + 1, len(state)):
                    agent1 = state[i]
                    agent2 = state[j]
                    if Util2().withinDis(agent1.getCoord().getNode(), agent2.getCoord().getNode()):
                        return False
        print("== Solution is correct. ==")
        return True

    def __str__(self):
        return "IDSolver"


def main():
    # graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    # # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6))]
    # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    # problem1 = ProblemInstance(graph1, agent1)
    # problem1.plotProblem()
    #
    # startTime = time.time()
    # solver1 = IDSolver(ODAStar())
    # solver1.solve(problem1)
    # print("solver time: {0} ".format(time.time() - startTime))
    #
    # solver1.printPath()
    # solver1.visualizePath(problem1)

    print("==== test case 1 ====")

    mapdict = {(2, 5): 2, (2, 7): 2, (2, 9): 1, (3, 9): 1,
               (7, 1): 2, (9, 1): 2, (11, 1): 1, (11, 2): 1,
               (8, 6): 2, (8, 8): 2
               }
    graph2 = Graph(ProblemMap(14, 14, mapdict))
    agent2 = [Agent(1, (0, 4), (0, 9)),
              Agent(2, (0, 6), (3, 0)),
              Agent(3, (0, 2), (9, 4)),
              Agent(4, (13, 6), (4, 2)),
              Agent(5, (13, 0), (1, 3)),
              Agent(6, (6, 9), (12, 7))
              ]
    testProblem1 = ProblemInstance(graph2, agent2)
    testProblem1.plotProblem()

    startTime = time.time()
    solver1 = IDSolver(ODAStar())
    solver1.solve(testProblem1)
    print("solver time: {0} ".format(time.time() - startTime))

    solver1.correctcheck(solver1.getPath())
    print("Count pins: {0}".format(solver1.countPins()))
    solver1.printPath()
    solver1.visualizePath(testProblem1)


if __name__ == '__main__':
    main()
