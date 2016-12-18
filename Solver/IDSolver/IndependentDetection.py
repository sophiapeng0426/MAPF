import copy
from SingleAgent.Solver.AStar.ODAStar import ODAStar
from SingleAgent.Solver.ConstraintSolver import ConstraintSolver
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Solver.Utils import Util
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
        self._initialProblem = None

    def solve(self, problemInstance, fileDir):
        self._initialProblem = problemInstance
        if len(self._pathList) == 0:
            if not self.populatePath(self._initialProblem):
                return False

        self.save(fileDir, 'initial')

        for i in range(len(self.paths())):
            self.solver().getCAT().addPath(self.paths()[i], i)
            self.solver().getUsedTable().addPath(self.paths()[i], i)

        index = 0
        while index < len(self._pathList):
            conflict = Util().conflict(index, 0, self._pathList)
            if conflict is None:
                index += 1
            else:
                if not self.resolveConflict(conflict.getGroup1(), conflict.getGroup2()):
                    print("fail to find new path")
                    return False
            if conflict is not None:
                self.save(fileDir, '{0}_{1}'.format(conflict.getGroup1(), conflict.getGroup2()))
            else:
                self.save(fileDir, 'solution')

        return True

    def resolveConflict(self, id1, id2):
        print("resolve conflict for group: {0}, {1}".format(id1, id2))
        # update _problemList[id1]
        self._problemList[id1].join(self._problemList[id2])
        # exclude paths for id1 and id2 for cat and UsedTable
        self.solver().getUsedTable().deletePath(self.paths()[id1], id1)
        self.solver().getUsedTable().deletePath(self.paths()[id2], id2)
        self.solver().getCAT().deletePath(self.paths()[id1], id1)
        self.solver().getCAT().deletePath(self.paths()[id2], id2)

        # otherPathList = self._pathList[:]
        # otherPathList[id1] = None
        # otherPathList[id2] = None
        if not self.solver().solve(self._problemList[id1]):
            return False

        self.solver().printPath()

        self._pathList[id1] = self._solver.getPath()
        self._problemList[id2] = None
        self._pathList[id2] = None

        # update new paths for cat and usedtable
        self.solver().getCAT().addPath(self.paths()[id1], id1)
        self.solver().getUsedTable().addPath(self.paths()[id1], id1)
        return True

    def populatePath(self, problemInstance):
        for agent in problemInstance.getAgents():
            # problemInstance requires _singleAgents a list!!
            self._problemList.append(ProblemInstance(problemInstance.getGraph(), [agent]))

        for problem in self._problemList:
            # use solver without initializing cat and used table
            if not self.solver().solve(problem):
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
        _, _, finalPath = Util().mergePaths(self._pathList)
        return finalPath

    """ ================== Auxiliary functions ==========================
    """
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
        """ Check if fluid constraints (static and dynamic) are violated
        :param pathList:
        :return:
        """
        for ith, state in enumerate(pathList):
            if ith != 0:
                prestate = pathList[ith - 1]
            else:
                prestate = None
            if ith == len(pathList) - 1:
                poststate = None
            else:
                poststate = pathList[ith + 1]

            for i in range(len(state)):
                agent1 = state[i]
                for j in range(0, len(state)):
                    if j != i:
                        agent2 = state[j]
                        if Util2().withinDis(agent1.getCoord().getNode(), agent2.getCoord().getNode()):
                            print("=== solution is WRONG ===")
                            return False
                if prestate is not None:
                    for j in range(0, len(prestate)):
                        if j != i:
                            agent2 = prestate[j]
                            if Util2().withinDis(agent1.getCoord().getNode(), agent2.getCoord().getNode()):
                                print("=== solution is WRONG ===")
                                return False
                if poststate is not None:
                    for j in range(0, len(poststate)):
                        if j != i:
                            agent2 = poststate[j]
                            if Util2().withinDis(agent1.getCoord().getNode(), agent2.getCoord().getNode()):
                                print("=== solution is WRONG ===")
                                return False
        print("== solution is CORRECT ==")
        return True

    def __str__(self):
        return "IDSolver"

    # def _savePath(self, path):
    #     """save self._pathlist and problemlist information"""
    #     res = []
    #     for i, odstate in enumerate(path):
    #         odPara = []
    #         para1 = [odstate.timeStep(), odstate.gValue(), odstate.hValue(), odstate.conflictViolations(),
    #                  odstate.usedElectrode()]
    #         for state in odstate.getSingleAgents():
    #             singlePara = [state.getAgentId(), state.getCoord().getNode(), state.gValue(), state.hValue()]
    #             odPara.append(singlePara)
    #         odPara.append(para1)
    #         res.append(odPara)
    #     return res

    def save(self, fileDir, filename):
        # res = []
        # for path in self._pathList:
        #     if path is not None:
        #         res.append(self._savePath(path))
        #     else:
        #         res.append(None)
        #
        import pickle
        import sys
        sys.setrecursionlimit(20000)

        with open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}/paths_{1}.pickle'.format(fileDir, filename),
                  'wb') as f1:
            pickle.dump(self._pathList, f1)

        with open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}/problem_{1}.pickle'.format(
                fileDir, filename),
                  'wb') as f2:
            pickle.dump(self._problemList, f2)

    def read(self, fileDir, pathname, problemname):
        import pickle
        # read pathlist and problemlist from files
        with open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}/paths_{1}.pickle'.format(fileDir, pathname),
                  'wb') as f1:
            self._pathList = pickle.load(f1)
        with open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}/paths_{1}.pickle'.format(fileDir, problemname),
                  'wb') as f2:
            self._problemList = pickle.load(f2)
        # fill solver() cat and usedtable in self.solve()






    # def initiateFromFile(self, ):

    # def read(self, filename, initialProblem):
    #     """Reconstruct IDSovler to continue solving problem"""
    #     with open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}.pickle'.format(filename),
    #               'rb') as f:
    #         savedPaths = pickle.load(f)
    #         print (savedPaths)


def main():
    import time
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap

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
    graph2 = Graph(ProblemMap(14, {(2, 5): (5, 2),
                              (0, 10): (5, 16),
                              (7, 1): (2, 5),
                              (8, 6): (4, 2)
                              }))
    agent2 = [Agent(0, (0, 4), (0, 9)),
              Agent(1, (0, 6), (3, 0)),
              Agent(2, (0, 2), (9, 4)),
              Agent(3, (13, 6), (4, 2)),
              # Agent(4, (13, 0), (1, 3)),
              # Agent(5, (6, 9), (12, 7))
              ]
    testProblem1 = ProblemInstance(graph2, agent2)
    testProblem1.plotProblem()

    # ============== test solver ==================
    startTime = time.time()
    solver1 = IDSolver(ODAStar())
    solver1.solve(testProblem1)
    print("solver time: {0} ".format(time.time() - startTime))

    solver1.correctcheck(solver1.getPath())
    solver1.printPath()
    solver1.visualizePath(testProblem1)

#     ============= test save ================


if __name__ == '__main__':
    main()
