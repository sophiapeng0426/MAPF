from IndependentDetection import IDSolver
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Solver.Utils import Util
from SingleAgent.Utilities.Util2 import Util2


class EnhandcedID(IDSolver):
    def __init__(self, solver, maxGroupSize, shuffleNum, outputName):
        super(EnhandcedID, self).__init__(solver)
        self._conflictInPast = []
        self._ouput = outputName
        self._mgs = maxGroupSize
        self._shuffleNum = shuffleNum

        self._bestCost = [10000, 10000]
        self._solutions = []
        self._visitedOrder = set([])

    def solve(self, problemInstance):
        self._initialProblem = problemInstance

        for ith in range(self._shuffleNum):
            print("=== ITERATION {0}... ===".format(ith))

            if self.populatePath(ith):
                for i in range(len(self.paths())):
                    self.solver().getCAT().addPath(self.paths()[i], i)
                    self.solver().getUsedTable().addPath(self.paths()[i], i)

                index = 0
                solved = True
                while index < len(self._pathList):
                    conflict = Util().conflict(index, 0, self._pathList)
                    if conflict is None:
                        index += 1
                    else:
                        if not self.resolveConflict(conflict.getGroup1(), conflict.getGroup2()):
                            print("Iteration {0} fail to find solution. \n".format(ith))
                            solved = False
                            break
                if solved:
                    totalCost, usedElectrode, finalPath = Util().mergePaths(self._pathList)
                    assert self.correctcheck(finalPath), 'Iteration {0} has wrong answer! '.format(ith)

                    headline = "Iteration {0} solution, total cost: {1}, used electrode: {2} \n".format(ith, totalCost,
                                                                                                        usedElectrode)
                    strPath = self.strPath(finalPath)
                    print(headline + strPath + '\n')
                    self.toFile(headline + '\n')

                    if totalCost < self._bestCost[0]:
                        self._bestCost[0] = totalCost

                        self._solutions.append(finalPath)
                        self.toFile(headline + strPath + '\n')
                    elif usedElectrode < self._bestCost[1]:
                        self._bestCost[1] = usedElectrode
                        self._solutions.append(finalPath)
                        self.toFile(headline + strPath + '\n')

        if len(self._solutions) > 0:
            return True
        else:
            return False

    def recordResult(self, cost, electrode, finalPath):
        # TODO: summarize write to file result, delete non-dominated solutions
        return

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

    def toFile(self, content):
        f = open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}.txt'.format(self._ouput), 'a+')
        f.write(content)
        f.close()
        print("Done writing...")

    def populatePath(self, ith):
        """
        clear solver() tables
        populate problemList, pathList
        :param ith:
        :return:
        """
        from random import shuffle
        # clear solver() tables
        self.clearSolver()
        # clear ProblemList and shuffle
        self._problemList[:] = []
        for agent in self._initialProblem.getAgents():
            # problemInstance requires _singleAgents a list!
            self._problemList.append(ProblemInstance(self._initialProblem.getGraph(), [agent]))
        if ith > 0:
            findNew = False
            while not findNew:
                shuffle(self._problemList)
                order = [[x.getId() for x in problem.getAgents()] for problem in self._problemList]
                if str(order) not in self._visitedOrder:
                    self._visitedOrder.add(str(order))
                    findNew = True
        print("Initial problem: {0} ".format([[x.getId() for x in problem.getAgents()]
                                              for problem in self._problemList]))
        # clear PathList
        self._pathList[:] = []
        for problem in self._problemList:
            # use solver without initializing cat and used table
            if not self.solver().solve(problem):
                return False
            self._pathList.append(self._solver.getPath())
        #  initialize conflictInPast table
        self._conflictInPast = [[False for i in range(len(self.paths()))] for j in range(len(self.paths()))]
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
    #     # otherPathList = self._pathList[:]
    #     # otherPathList[id1] = None
    #     # otherPathList[id2] = None
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
        print("\n==== Resovle Conflict {0} {1} ====".format(id1, id2))
        totalSize = len(self._problemList[id1].getAgents()) + len(self._problemList[id2].getAgents())
        exceed = totalSize > self._mgs
        # resolved before
        if self._conflictInPast[id1][id2] is True:
            if exceed is False:
                self.updateConflictPast(id1)
                # changed pathlist, problemList, cat, usedtable
                return super(EnhandcedID, self).resolveConflict(id1, id2)
            else:
                print("Exceed MGS, fail to find path. ")
                return False
        # not encounter before
        else:
            alternative = self._findAlternativePath(id1, id2, exceed)
            if not alternative:
                alternative = self._findAlternativePath(id2, id1, exceed)
            # solved by rerouting
            self._conflictInPast[id1][id2] = True
            self._conflictInPast[id2][id1] = True
            if alternative:
                print("found new path.")
                return True
            else:
                return self.resolveConflict(id1, id2)

    def _findAlternativePath(self, id1, id2, exceed):
        """
        find alternative path for problem[id1], while reserving id2
        :param id1:
        :param id2:
        :return:
        """
        print("Reserve path {0}, find alternative: {1}".format(id2, id1))
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
        if self.solver().solve(self.problems()[id1]):
            print("=== find new path, new cost: {0} ===".format(self.solver().getPath()[-1].gValue()))
            self.solver().printPath()
            # ====== confirm newpath is no conflict ===========
            newpath1 = self.solver().getPath()
            tempPaths = [newpath1, path2]
            tempConflict = Util().conflict(0, 0, tempPaths)
            if tempConflict is not None:
                print(tempConflict)
            assert tempConflict is None
            tempConflict = Util().conflict(1, 0, tempPaths)
            assert tempConflict is None
            # ====== end ==========
            if exceed is False:
                if self.solver().getPath()[-1].gValue() == costLimit:
                    # find optimal solution, update new path1
                    self.paths()[id1] = newpath1
                    # clear reservation, update cat and usedtable
                    self.solver().getReservation().clear()
                    self.solver().getCAT().addPath(newpath1, id1)
                    self.solver().getUsedTable().addPath(newpath1, id1)
                    return True
                else:
                    # did not find optimal solution -> clear reservation and update cat, usedtable
                    self.solver().getReservation().clear()
                    self.solver().getCAT().addPath(path1, id1)
                    self.solver().getUsedTable().addPath(path1, id1)
                    return False
            # free costlimit constraint
            else:
                print("MGS exceed, find alternative path with new cost. ")
                self.paths()[id1] = newpath1
                # clear reservation, update cat and usedtable
                self.solver().getReservation().clear()
                self.solver().getCAT().addPath(newpath1, id1)
                self.solver().getUsedTable().addPath(newpath1, id1)
                return True
        else:
            print("failed to find a path.\n")
            self.solver().getReservation().clear()
            self.solver().getCAT().addPath(path1, id1)
            self.solver().getUsedTable().addPath(path1, id1)
            return False

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

    print("============== test case 1 =================")
    # graph = Graph(ProblemMap(14, {(2, 5): (5, 2),
    #                           (0, 10): (5, 16),
    #                           (7, 1): (2, 5),
    #                           (8, 6): (4, 2)
    #                           }))
    # agent = [Agent(0, (0, 4), (0, 9)),
    #           Agent(1, (0, 6), (3, 0)),
    #           Agent(2, (0, 2), (9, 4)),
    #           Agent(3, (13, 6), (4, 2)),
    #           Agent(4, (13, 0), (1, 3)),
    #           Agent(5, (6, 9), (12, 7))
    #           ]
    # agent = agent[::-1]
    # testProblem = ProblemInstance(graph, agent)
    # testProblem.plotProblem()

    # startTime = time.time()
    # solver1 = EnhandcedID(ODAStar(), 5, 8, 'test1-2')
    # if solver1.solve(testProblem):
    #     print("solver time: {0} ".format(time.time() - startTime))

    print("============== test_12_12_1 ================")
    # graph = Graph(ProblemMap(12, {(1, 7): (3, 9),
    #                 (8, 3): (9, 4),
    #                 (3, 1): (4, 3),
    #                 (8, 9): (9, 10)
    #                 }))
    # agent = [Agent(0, (0, 0), (9, 5)),
    #          Agent(1, (0, 11), (2, 2)),
    #          Agent(2, (2, 11), (6, 5)),
    #          Agent(3, (2, 0), (4, 10)),
    #          Agent(4, (4, 11), (8, 7)),
    #          Agent(5, (7, 11), (4, 8)),
    #          Agent(6, (7, 0), (4, 6)),
    #          Agent(7, (11, 3), (2, 10)),
    #          Agent(8, (9, 0), (0, 10)),
    #          Agent(9, (11, 6), (2, 4)),
    #          Agent(10, (10, 11), (0, 8)),
    #          Agent(11, (11, 9), (1, 6))
    #          ]
    # testProblem = ProblemInstance(graph, agent)
    # testProblem.plotProblem()
    # === alternative ===
    fileroot = '/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/DMFB'
    filename = 'test_12_12_1.in'
    testProblem = generateProblem(os.path.join(fileroot, filename))
    testProblem.plotProblem()

    startTime = time.time()
    solver1 = EnhandcedID(ODAStar(), 4, 10, 'test_12_12_1')
    if solver1.solve(testProblem):
        print("solver time: {0} ".format(time.time() - startTime))

    # solver1 = EnhandcedID(ODAStar())
    # solver1.populatePath(testProblem1)
    # solver1.visualizePath(testProblem1)
    #
    # for i in range(len(solver1.paths())):
    #     solver1.solver().getCAT().addPath(solver1.paths()[i], i)
    # cat = solver1.solver().getCAT()
    # for key, value in cat.groupOccupantTable().items():
    #     print("{0}, {1}".format(key, value))
    #
    # print("orignal gvalue: {0}".format(solver1.paths()[0][-1].gValue()))
    # solver1.solver().getReservation().reservePath(solver1.paths()[1])
    # solver1.solver().getCAT().deletePath(solver1.paths()[0], 0)
    #
    # cat = solver1.solver().getCAT()
    # for key, value in cat.groupOccupantTable().items():
    #     print("{0}, {1}".format(key, value))
    #
    # print(solver1.solver().solve(solver1.problems()[0]))
    # solver1.solver().printPath()
    #
    # solver1.solver().getReservation().clear()
    # print(solver1.solver().solve(solver1.problems()[0]))
    # solver1.solver().printPath()

    # ======== test shuffle problemlist ======
    # solver1 = EnhandcedID(ODAStar(), 4, 5)
    # solver1.populatePath(testProblem1)
    # problemList = solver1.problems()
    # print(problemList)
    # print(solver1.problems())
    #
    # from random import shuffle
    # shuffle(problemList)
    # print(problemList)
    # print(solver1.problems())

#     ======= test open =============
#     import os
#     print(os.getcwd())
#
#     # print(os.path.join('./SingleAgent/Result/test1.txt'))
#     # print(os.getcwd())
#
#     f = open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/test2.txt', 'a+')
#     f.write('a')
#     f.close()


if __name__ == '__main__':
    main()


