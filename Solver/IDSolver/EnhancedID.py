import pickle
import sys
from IndependentDetection import IDSolver
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Solver.Utils import Util
from SingleAgent.Utilities.Util2 import Util2


class EnhandcedID(IDSolver):
    def __init__(self, solver, maxGroupSize, resultFileName):
        super(EnhandcedID, self).__init__(solver)
        self._conflictInPast = []
        self._ouput = resultFileName
        self._mgs = maxGroupSize

    def solve(self, problemInstance, saveDir):
        self._initialProblem = problemInstance

        if len(self._problemList) == 0:
            if not self.populatePath(self._initialProblem):
                return False
        self.save(saveDir, 'initial')

        for i in range(len(self.paths())):
            if self.paths()[i] is not None:
                self.solver().getCAT().addPath(self.paths()[i], i)
                self.solver().getUsedTable().addPath(self.paths()[i], i)

        index = 0
        while index < len(self._pathList):
            conflict = Util().conflict(index, 0, self._pathList)
            if conflict is None:
                index += 1
            else:
                pblist = self._problemList[:]
                problemBefore = len(filter(lambda x: x is not None, pblist))
                if not self.resolveConflict(conflict.getGroup1(), conflict.getGroup2()):
                    return False
                # ======= for debugging ==========
                # else:
                #     return True
                # ======= end ===========
                pblist = self._problemList[:]
                problemAfter = len(filter(lambda x: x is not None, pblist))
                if problemBefore == problemAfter:
                    index = min(conflict.getGroup1(), conflict.getGroup2())
            if conflict is not None:
                self.save(saveDir, '{0}_{1}'.format(conflict.getGroup1(), conflict.getGroup2()))
            elif conflict is None and index == len(self._pathList)-1:
                self.save(saveDir, 'solution')

        totalCost, usedElectrode, finalPath = Util().mergePaths(self._pathList)
        assert self.correctcheck(finalPath), 'Wrong answer!'
        headline = "total cost: {0}, used electrode: {1} \n".format(totalCost, usedElectrode)
        strPath = self.strPath(finalPath)
        print(headline + strPath + '\n')

        self.recordResult(headline, strPath)
        return True

    """ ============ file IO ==============="""
    def recordResult(self, headline, strPath):
        f = open('{0}.txt'.format(self._ouput), 'a+')
        f.write(headline + strPath + '\n')
        f.close()

    def strPath(self, pathList):
        """print paths"""
        strout = ''
        for t, singleAgents in enumerate(pathList):
            strout += "TimeStep: {0}".format(t)
            gValue = 0
            hValue = 0

            for singleAgent in singleAgents:
                gValue += singleAgent.gValue()
                hValue += singleAgent.hValue()

                strout += '; ' + str(singleAgent)
            strout += '; gValue: {0}; hValue: {1} \n '.format(gValue, hValue)
        return(strout)

    def save(self, fileDir, filename):
        """save pathlist, problemlist, conflictInPast"""
        sys.setrecursionlimit(20000)

        with open('{0}/{1}.pickle'.format(fileDir, filename),
                  'wb') as f1:
            pickle.dump(self.paths(), f1)
            pickle.dump(self.problems(), f1)
            pickle.dump(self._conflictInPast, f1)

    def read(self, fileDir, filename):
        """
        :param fileDir:
        :param filename: '0_1', 'initial', 'solution'
        :return:
        """
        with open('{0}/{1}.pickle'.format(fileDir, filename), 'rb') as f1:
            self._pathList = pickle.load(f1)
            self._problemList = pickle.load(f1)
            self._conflictInPast = pickle.load(f1)
            # fill solver() cat and usedtable in self.solve()

    """ =============================
    """
    def populatePath(self, problemInstance):
        """
        clear solver() tables, populate problemList, pathList
        """
        from random import shuffle
        # ===== clear solver() tables ===
        self.clearSolver()
        # ===== clear ProblemList and shuffle ===
        self._problemList[:] = []
        for agent in self._initialProblem.getAgents():
            # problemInstance requires _singleAgents a list!
            self._problemList.append(ProblemInstance(self._initialProblem.getGraph(), [agent]))
        # ===== clear PathList =====
        self._pathList[:] = []
        if not self.solveInitialProblem():
            return False
        self.clearSolver()
        self._conflictInPast = [[False for i in range(len(self.paths()))] for j in range(len(self.paths()))]
        return True

    def solveInitialProblem(self):
        # first iteration
        self.solver().setIgnore(False)
        for ith, problem in enumerate(self._problemList):
            if not self.solver().solve(problem):
                return False
            self.solver().getCAT().addPath(self.solver().getPath(), ith)
            self.solver().getUsedTable().addPath(self.solver().getPath(), ith)
            self._pathList.append(self.solver().getPath())
        # second iteration
        for ith, problem in enumerate(self._problemList):
            self.solver().getCAT().deletePath(self._pathList[ith], ith)
            self.solver().getUsedTable().deletePath(self._pathList[ith], ith)
            if not self.solver().solve(problem):
                return False

            self.solver().getCAT().addPath(self.solver().getPath(), ith)
            self.solver().getUsedTable().addPath(self.solver().getPath(), ith)
            self._pathList[ith] = self.solver().getPath()
            # ==== for fix bug ===
            self.solver().visualizePath(problem)
            print("total Conflict: {0}".format(self.solver().getPath()[-1].conflictViolations()))
            # ==== end  ===
        return True

    # def resolveConflict(self, id1, id2):
    #     print("resolve conflict for group: {0}, {1}".format(id1, id2))
    #     # update _problemList[id1]
    #     self._problemList[id1].join(self._problemList[id2])
    #     # exclude paths for id1 and id2 for cat and UsedTable
    #     self.solver().getUsedTable().deletePath(self.paths()[id1], id1)
    #     self.solver().getUsedTable().deletePath(self.paths()[id2], id2)
    #     self.solver().getCAT().deletePath(self.paths()[id1], id1)
    #     self.solver().getCAT().deletePath(self.paths()[id2], id2)
    #
    #     if not self.solver().solve(self._problemList[id1]):
    #         return False
    #
    #     self.solver().printPath()
    #
    #     self._pathList[id1] = self._solver.getPath()
    #     self._problemList[id2] = None
    #     self._pathList[id2] = None
    #
    #     # update new paths for cat and usedtable
    #     self.solver().getCAT().addPath(self.paths()[id1], id1)
    #     self.solver().getUsedTable().addPath(self.paths()[id1], id1)
    #     return True

    def resolveConflict(self, id1, id2):
        print("\n==== Resolve Conflict {0} {1} ====".format(id1, id2))
        totalSize = len(self._problemList[id1].getAgents()) + len(self._problemList[id2].getAgents())
        exceed = totalSize > self._mgs
        if exceed:
            if self._conflictInPast[id1][id2] is True:
                if totalSize <= self._mgs + 3:
                    self.solver().setIgnore(True)
                    self.updateConflictPast(id1)
                    return super(EnhandcedID, self).resolveConflict(id1, id2)
                else:
                    print("Exceed MGS, fail to find path.")
                    return False
            else:
                alternative = self._findLessViolationPath(id2, id1)
                if not alternative:
                    alternative = self._findLessViolationPath(id1, id2)
                self._conflictInPast[id1][id2] = True
                self._conflictInPast[id2][id1] = True
        else:
            if self._conflictInPast[id1][id2] is True:
                self.updateConflictPast(id1)
                return super(EnhandcedID, self).resolveConflict(id1, id2)
            else:
                alternative = self._findEqualCostPath(id2, id1)
                if not alternative:
                    alternative = self._findEqualCostPath(id1, id2)
                self._conflictInPast[id1][id2] = True
                self._conflictInPast[id2][id1] = True
        if alternative:
            print("found new path.")
            return True
        else:
            return self.resolveConflict(id1, id2)

    def haveConflict(self, newpath1, path2):
        # ====== confirm newpath is no conflict ===========
        haveConflict = False
        tempPaths = [newpath1, path2]
        tempConflict = Util().conflict(0, 0, tempPaths)
        if tempConflict is not None:
            print(tempConflict)
            haveConflict = True
        assert tempConflict is None or tempConflict.getTimeStep() == 1
        tempConflict = Util().conflict(1, 0, tempPaths)
        if tempConflict is not None:
            print(tempConflict)
            haveConflict = True
        assert tempConflict is None or tempConflict.getTimeStep() == 1
        return haveConflict

    def _findLessViolationPath(self, id1, id2):
        print("Reserve path {0}, find less violation alternative: {1}".format(id2, id1))
        path1 = self.paths()[id1]
        path2 = self.paths()[id2]
        costLimit = path1[-1].gValue()

        # update reservation, cat and usedtable
        if not self.solver().getReservation().isEmpty():
            self.solver().getReservation().clear()
        self.solver().getReservation().reservePath(path2)

        print("=== reserved path ===")
        for state in path2:
            print(state)

        self.solver().getCAT().deletePath(path1, id1)
        self.solver().getUsedTable().deletePath(path1, id1)

        print("original cost: {0}".format(costLimit))
        # set priority to violations
        self.solver().setIgnore(True)

        if self.solver().solve(self.problems()[id1]):
            print("=== find new path, new cost: {0} ===".format(self.solver().getPath()[-1].gValue()))
            self.solver().printPath()
            # ====== confirm newpath is no conflict ===========
            newpath1 = self.solver().getPath()
            if self.haveConflict(newpath1, path2):
                print("failed conflict check.")
                self.solver().getReservation().clear()
                self.solver().getCAT().addPath(path1, id1)
                self.solver().getUsedTable().addPath(path1, id1)
                return False
            # ====== end ==========
            print("MGS exceed, find alternative path with new cost.")
            self.paths()[id1] = newpath1
            # clear reservation, update cat and usedtable
            self.solver().getReservation().clear()
            self.solver().getCAT().addPath(newpath1, id1)
            self.solver().getUsedTable().addPath(newpath1, id1)
            return True
        else:
            print("failed to find a path.")
            self.solver().getReservation().clear()
            self.solver().getCAT().addPath(path1, id1)
            self.solver().getUsedTable().addPath(path1, id1)
            return False

    def _findEqualCostPath(self, id1, id2):
        print("Reserve path {0}, find equal cost alternative: {1}".format(id2, id1))
        path1 = self.paths()[id1]
        path2 = self.paths()[id2]
        costLimit = path1[-1].gValue()

        # update reservation, cat and usedtable
        self.solver().getReservation().reservePath(path2)
        print("=== reserved path ===")
        for state in path2:
            print(state)
        self.solver().getCAT().deletePath(path1, id1)
        self.solver().getUsedTable().deletePath(path1, id1)

        # solve new constrained problem and find cost
        print("original cost: {0}".format(costLimit))
        # set priority to cost
        self.solver().setIgnore(False)

        if self.solver().solve(self.problems()[id1]):
            print("=== find new path, new cost: {0} ===".format(self.solver().getPath()[-1].gValue()))
            self.solver().printPath()
            # ====== confirm newpath is no conflict ===========
            newpath1 = self.solver().getPath()
            if self.haveConflict(newpath1, path2):
                print("failed conflict check.")
                self.solver().getReservation().clear()
                self.solver().getCAT().addPath(path1, id1)
                self.solver().getUsedTable().addPath(path1, id1)
                return False
            # ====== end ==========
            if self.solver().getPath()[-1].gValue() == costLimit:
                # find optimal solution, update new path1
                self.paths()[id1] = newpath1
                # clear reservation, update cat and usedtable
                self.solver().getReservation().clear()
                self.solver().getCAT().addPath(newpath1, id1)
                self.solver().getUsedTable().addPath(newpath1, id1)
                return True
        print("failed to find a path.")
        self.solver().getReservation().clear()
        self.solver().getCAT().addPath(path1, id1)
        self.solver().getUsedTable().addPath(path1, id1)
        return False

    #
    # def _findLessCostPath(self, id1, id2, exceed):
    #     """
    #     find alternative path for problem[id1], while reserving id2
    #     :param id1:
    #     :param id2:
    #     :return:
    #     """
    #     print("Reserve path {0}, find alternative: {1}".format(id2, id1))
    #     path1 = self.paths()[id1]
    #     path2 = self.paths()[id2]
    #     costLimit = path1[-1].gValue()
    #
    #     # update reservation, cat and usedtable
    #     self.solver().getReservation().reservePath(path2)
    #     print("=== reserved path ===")
    #     for state in path2:
    #         print(state)
    #     self.solver().getCAT().deletePath(path1, id1)
    #     self.solver().getUsedTable().deletePath(path1, id1)
    #
    #     # solve new constrained problem and find cost
    #     print("original cost: {0}".format(costLimit))
    #     if self.solver().solve(self.problems()[id1]):
    #         print("=== find new path, new cost: {0} ===".format(self.solver().getPath()[-1].gValue()))
    #         self.solver().printPath()
    #         # ====== confirm newpath is no conflict ===========
    #         haveConflict = False
    #         newpath1 = self.solver().getPath()
    #         tempPaths = [newpath1, path2]
    #         tempConflict = Util().conflict(0, 0, tempPaths)
    #         if tempConflict is not None:
    #             print(tempConflict)
    #             haveConflict = True
    #         assert tempConflict is None or tempConflict.getTimeStep() == 1
    #         tempConflict = Util().conflict(1, 0, tempPaths)
    #         if tempConflict is not None:
    #             print(tempConflict)
    #             haveConflict = True
    #         assert tempConflict is None or tempConflict.getTimeStep() == 1
    #         if haveConflict:
    #             print("failed to find a path.\n")
    #             self.solver().getReservation().clear()
    #             self.solver().getCAT().addPath(path1, id1)
    #             self.solver().getUsedTable().addPath(path1, id1)
    #             return False
    #
    #         # ====== end ==========
    #         if exceed is False:
    #             if self.solver().getPath()[-1].gValue() == costLimit:
    #                 # find optimal solution, update new path1
    #                 self.paths()[id1] = newpath1
    #                 # clear reservation, update cat and usedtable
    #                 self.solver().getReservation().clear()
    #                 self.solver().getCAT().addPath(newpath1, id1)
    #                 self.solver().getUsedTable().addPath(newpath1, id1)
    #                 return True
    #             else:
    #                 # did not find optimal solution -> clear reservation and update cat, usedtable
    #                 self.solver().getReservation().clear()
    #                 self.solver().getCAT().addPath(path1, id1)
    #                 self.solver().getUsedTable().addPath(path1, id1)
    #                 return False
    #         # free costlimit constraint
    #         else:
    #             print("MGS exceed, find alternative path with new cost. ")
    #             self.paths()[id1] = newpath1
    #             # clear reservation, update cat and usedtable
    #             self.solver().getReservation().clear()
    #             self.solver().getCAT().addPath(newpath1, id1)
    #             self.solver().getUsedTable().addPath(newpath1, id1)
    #             return True
    #     else:
    #         print("failed to find a path.\n")
    #         self.solver().getReservation().clear()
    #         self.solver().getCAT().addPath(path1, id1)
    #         self.solver().getUsedTable().addPath(path1, id1)
    #         return False

    def updateConflictPast(self, id):
        # set all index from id and to id to false
        self._conflictInPast[id] = [False for i in range(len(self.paths()))]
        for i in range(len(self._conflictInPast)):
            self._conflictInPast[i][id] = False

    def clearSolver(self):
        self.solver().getReservation().clear()
        self.solver().getCAT().clear()
        self.solver().getUsedTable().clear()


def generateProblem(filename):
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap

    size, block, agentNum, agentList = Util2().readTestFile(filename)
    graph = Graph(ProblemMap(size, block))
    agent = [Agent(x[0], x[1], x[2]) for x in agentList]
    problem = ProblemInstance(graph, agent)
    return problem


def main():
    import time
    import os
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap
    from SingleAgent.Solver.AStar.ODAStar import ODAStar

    # graph = Graph(ProblemMap(12, {(7, 1): (3, 3),
    #                 (3, 8): (2, 2),
    #                 (1, 3): (2, 3),
    #                 (9, 8): (2, 2)
    #                 }))
    # agent = [Agent(3, (0, 2), (10, 4)),
    #          Agent(7, (3, 11), (10, 2)),
    #          Agent(0, (0, 0), (5, 9)),
    #          Agent(10, (11, 10), (8, 0)),
    #          Agent(2, (11, 2), (5, 6)),
    #          Agent(8, (0, 9), (10, 0)),
    #          Agent(9, (6, 11), (4, 2)),
    #          Agent(6, (0, 7), (6, 4)),
    #          Agent(1, (11, 0), (2, 2)),
    #          Agent(11, (9, 11), (6, 1)),
    #          Agent(4, (11, 4), (7, 8)),
    #          Agent(5, (11, 7), (8, 4)),
    #          ]

    print("============== test case ================")

    # ========== read from file ================
    fileroot = '/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/DMFB'
    # # filename = 'benchmark_2_minsik'
    # # filename = 'in-vitro.3'
    # # filename ='in-vitro_2.3'
    # # filename = 'protein.9'
    # # filename = 'in-vitro_2.5'
    filename = 'test_12_12_2.in'
    # filename = 'test_24_24_1.in'
    testProblem = generateProblem(os.path.join(fileroot, filename))
    testProblem.plotProblem()

    saveRoot= '/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}/'.format(filename[0:-3])
    if not os.path.exists(os.path.dirname(saveRoot)):
        os.makedirs(os.path.dirname(saveRoot))
    # save probleminstance
    with open(saveRoot + 'InitialProblem.pickle', 'wb') as f:
        pickle.dump(testProblem, f)
    # save result and other things
    startTime = time.time()
    solver1 = EnhandcedID(ODAStar(), 1, saveRoot + 'test_12_12_2')
    if solver1.solve(testProblem, saveRoot):
        print("solver time: {0} ".format(time.time() - startTime))

    # ========== test read from pickle file ================
    # read probleminstance
    # readRoot = '/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/test_12_12_1/'
    # saveRoot= readRoot + 'test35/'
    # if not os.path.exists(os.path.dirname(saveRoot)):
    #     os.makedirs(os.path.dirname(saveRoot))
    #
    # with open(readRoot + 'InitialProblem.pickle', 'rb') as f:
    #     testProblem = pickle.load(f)
    #
    # solver2 = EnhandcedID(ODAStar(), 1, saveRoot + 'test_12_12_1_test35')
    # solver2.read(readRoot, '1_9')
    # solver2.solve(testProblem, saveRoot)

    #  === test conflict as priority =======
    # solver1 = EnhandcedID(ODAStar(), 3, 1, 'test_12_12_1')
    # solver1._initialProblem = testProblem
    # solver1.populatePath(0)
    #
    # solver1.solver().getCAT().deletePath(solver1._pathList[0], 0)
    # solver1.solver().getUsedTable().deletePath(solver1._pathList[0], 0)
    # solver1.solver().getCAT().deletePath(solver1._pathList[2], 2)
    # solver1.solver().getUsedTable().deletePath(solver1._pathList[2], 2)
    # solver1.solver().getCAT().deletePath(solver1._pathList[5], 5)
    # solver1.solver().getUsedTable().deletePath(solver1._pathList[5], 5)
    #
    # solver1._problemList[0].join(solver1._problemList[2])
    # solver1._problemList[0].join(solver1._problemList[5])
    #
    # solver1.solver().setIgnore(True)
    # # solver1.solver().getReservation().reservePath(solver1._pathList[5])
    # solver1.solver().solve(solver1._problemList[0])
    # solver1.solver().printPath()
    # solver1.solver().visualizePath(solver1._problemList[0])

    # verify
    # verifyList = []
    # verifyList.append(solver1.solver().getPath())
    # verifyList.append(solver1._pathList[5])
    # _, _, finalPath = Util().mergePaths(verifyList)
    #
    # assert solver1.correctcheck(finalPath), 'correct check not pass.'


if __name__ == '__main__':
    main()


