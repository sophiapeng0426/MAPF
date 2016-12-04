from IndependentDetection import IDSolver
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Solver.Utils import Util


class EnhandcedID(IDSolver):
    def __init__(self, solver):
        super(EnhandcedID, self).__init__(solver)
        self._conflictInPast = []

    # def solve(self, problemInstance):
    #     self._initialProblem = problemInstance
    #     if not self.populatePath(self._initialProblem):
    #         return False
    #
    #     for i in range(len(self.paths())):
    #         self.solver().getCAT().addPath(self.paths()[i], i)
    #         self.solver().getUsedTable().addPath(self.paths()[i], i)
    #
    #     index = 0
    #     while index < len(self._pathList):
    #         conflict = Util().conflict(index, 0, self._pathList)
    #         if conflict is None:
    #             index += 1
    #         else:
    #             if not self.resolveConflict(conflict.getGroup1(), conflict.getGroup2()):
    #                 print("fail to find new path")
    #                 return False
    #     return True

    def populatePath(self, problemInstance):
        for agent in problemInstance.getAgents():
            # problemInstance requires _singleAgents a list!!
            self._problemList.append(ProblemInstance(problemInstance.getGraph(), [agent]))

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
        # resolved before
        if self._conflictInPast[id1][id2] is True:
            self.updateConflictPast(id1)
            # changed pathlist, problemList, cat, usedtable
            return super(EnhandcedID, self).resolveConflict(id1, id2)
        # not encounter before
        else:
            alternative = self._findAlternativePath(id1, id2)
            if not alternative:
                alternative = self._findAlternativePath(id2, id1)
            # solved by rerouting
            if alternative:
                print("found new path.")
                self._conflictInPast[id1][id2] = True
                self._conflictInPast[id2][id1] = True
                return True
            # need to combine
            else:
                print("fail to find alternative path, merge...")
                self.updateConflictPast(id1)
                return super(EnhandcedID, self).resolveConflict(id1, id2)

    def _findAlternativePath(self, id1, id2):
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
        print("original cost: {0}".format(costLimit))

        # update reservation, cat and usedtable
        self.solver().getReservation().reservePath(path2)
        self.solver().getCAT().deletePath(path1, id1)
        self.solver().getUsedTable().deletePath(path1, id1)

        # solve new constrained problem and find cost
        if self.solver().solve(self.problems()[id1]):
            print("=== find new path, new cost: {0} ===".format(self.solver().getPath()[-1].gValue()))
            self.solver().printPath()
            print("=== previous conflict path ===")
            for state in path2:
                print(state)
            print("\n")

            if self.solver().getPath()[-1].gValue() == costLimit:
                # update new path1
                newpath1 = self.solver().getPath()

                # ====== confirm newpath is no conflict ===========
                tempPaths = [newpath1, path2]
                tempConflict = Util().conflict(0, 0, tempPaths)
                if tempConflict is not None:
                    print(tempConflict)
                assert tempConflict is None
                tempConflict = Util().conflict(1, 0, tempPaths)
                assert tempConflict is None
                # ====== end ===========
                self.paths()[id1] = newpath1

                # clear reservation, update cat and usedtable
                self.solver().getReservation().clear()
                self.solver().getCAT().addPath(newpath1, id1)
                self.solver().getUsedTable().addPath(newpath1, id1)
                return True
        # did not find optimal solution -> clear reservation and update cat, usedtable
        self.solver().getReservation().clear()
        self.solver().getCAT().addPath(path1, id1)
        self.solver().getUsedTable().addPath(path1, id1)
        return False

    def updateConflictPast(self, id):
        # set all index from id and to id to false
        self._conflictInPast[id] = [False for i in range(len(self.paths()))]
        for i in range(len(self._conflictInPast)):
            self._conflictInPast[i][id] = False


def main():
    import time
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

    print("==== test case 1 ====")
    graph2 = graph2 = Graph(ProblemMap(14, {(2, 5): (5, 2),
                              (0, 10): (5, 16),
                              (7, 1): (2, 5),
                              (8, 6): (4, 2)
                              }))
    agent2 = [Agent(0, (0, 4), (0, 9)),
              Agent(1, (0, 6), (3, 0)),
              Agent(2, (0, 2), (9, 4)),
              Agent(3, (13, 6), (4, 2)),
              Agent(4, (13, 0), (1, 3)),
              Agent(5, (6, 9), (12, 7))
              ]
    # agent2 = agent2[::-1]
    testProblem1 = ProblemInstance(graph2, agent2)
    testProblem1.plotProblem()

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


    startTime = time.time()
    solver1 = EnhandcedID(ODAStar())
    solver1.solve(testProblem1)
    print("solver time: {0} ".format(time.time() - startTime))

    solver1.correctcheck(solver1.getPath())
    # print("Count pins: {0}".format(solver1.countPins()))
    solver1.printPath()
    # print("Total cell used: {0}".format(solver1.totalElectrode(testProblem1)))
    solver1.visualizePath(testProblem1)


if __name__ == '__main__':
    main()


