import time
import copy
from SingleAgent.Utilities.ProblemMap import ProblemMap
from SingleAgent.Utilities.Graph import Graph
from SingleAgent.Utilities.Agent import Agent
from SingleAgent.Solver.ConstraintSolver import ConstraintSolver
from SingleAgent.Solver.AStar.ODAStar import ODAStar
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Utils import Util


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

    def __str__(self):
        return "IDSolver"

def main():
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    # agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6))]
    agent1 = [Agent(0, (9, 6), (9, 2)), Agent(1, (9, 2), (9, 6)), Agent(2, (4, 4), (11, 5))]
    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    startTime = time.time()
    solver1 = IDSolver(ODAStar())
    solver1.solve(problem1)
    print("solver time: {0} ".format(time.time() - startTime))

    solver1.printPath()
    solver1.visualizePath(problem1)

    # print(solver1.paths())



if __name__ == "__main__":
    main()