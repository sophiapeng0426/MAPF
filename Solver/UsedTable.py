class UsedTable(object):
    def __init__(self):
        """
        cellTable: {
        """
        self._cellTable = {}
        self._initial = False

    # def init(self, problemInstance):
    #     self._size = problemInstance.getGraph().getSize()
    #     self._cellList = [0 for i in range(self._size * self._size)]

    # def fillTable(self, pathList):
    #     """ fill nodeList with otherPaths
    #     :param pathList1:
    #     :param timeit: report time to generate filltable
    #     :return:
    #     """
    #     assert self._size != 0, 'Need to init() UsedTable before fill, use problemInstance to init'
    #     pathList = filter(lambda x: x is not None, pathList)
    #     for path in pathList:
    #         for j in range(len(path)):
    #             thisState = path[j]
    #             for s in thisState.getSingleAgents():
    #                 pos = s.getCoord().getNode().getPosition()
    #                 self._cellList[pos[0] * self._size + pos[1]] = 1
    def isInitialized(self):
        return self._initial

    def isEmpty(self):
        return len(self._cellTable) == 0

    def addPath(self, path, id):
        # print("usedTable add path {0}".format(id))
        self._initial = True
        for i in range(len(path)):
            thisState = path[i]
            for s in thisState.getSingleAgents():
                pos = s.getCoord().getNode().getPosition()
                if pos not in self._cellTable:
                    self._cellTable[pos] = set([id])
                else:
                    self._cellTable[pos].add(id)

    # def addPathList(self, paths):
    #     """add _pathList"""
    #     for i in range(len(paths)):
    #         if paths[i] is not None:
    #             self.addPath(paths[i], i)

    def deletePath(self, path, id):
        # print("usedTable delete path {0}".format(id))
        if path is None:
            return
        for i in range(len(path)):
            thisState = path[i]
            for s in thisState.getSingleAgents():
                pos = s.getCoord().getNode().getPosition()
                if pos in self._cellTable and id in self._cellTable[pos]:
                    self._cellTable[pos].remove(id)
                    if len(self._cellTable[pos]) == 0:
                        del self._cellTable[pos]

    def toList(self, size):
        cellList = [0 for i in range(size*size)]
        for pos, _ in self._cellTable.items():
            cellList[pos[0] * size + pos[1]] = 1
        return cellList

    # def cellList(self):
    #     return self._cellList

    # def cellListCopy(self):
    #     return self._cellList[:]

    def getSize(self):
        return len(self._cellTable)

    # def getListSize(self):
    #     return len(self._cellList)
    def cellTable(self):
        return self._cellTable

    def clear(self):
        self._cellTable.clear()
        self._initial = False

    def __str__(self):
        return 'a cellTable dictionary'


def main():
    import time
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap
    from SingleAgent.Solver.AStar.ODAStar import ODAStar

    table = UsedTable()
    graph2 = Graph(ProblemMap(14, {(2, 5): (5, 2),
                                   (0, 10): (5, 16),
                                   (7, 1): (2, 5),
                                   (8, 6): (4, 2)
                                   }))
    agent2 = [#Agent(0, (0, 4), (0, 9)),
              Agent(0, (0, 6), (3, 0)),
              Agent(1, (0, 2), (9, 4))
              # Agent(3, (13, 6), (4, 2)),
              # Agent(4, (13, 0), (1, 3)),
              # Agent(5, (6, 9), (12, 7))
              ]
    agent3 = [Agent(0, (0, 4), (0, 9))
              # Agent(1, (0, 6), (3, 0)),
              # Agent(2, (0, 2), (9, 4)),
              # Agent(3, (13, 6), (4, 2))
              # Agent(4, (13, 0), (1, 3)),
              # Agent(5, (6, 9), (12, 7))
              ]
    testProblem1 = ProblemInstance(graph2, agent2)
    testProblem2 = ProblemInstance(graph2, agent3)
    testProblem1.plotProblem()
    print()
    testProblem2.plotProblem()

    startTime = time.time()
    solver1 = ODAStar()
    solver1.solve(testProblem1)
    print("solver time: {0} ".format(time.time() - startTime))
    solver1.printPath()
    solver1.visualizePath(testProblem1)

#   =====  test addPath ===
    table.addPath(solver1.getPath(), 0)
    for key, value in table.cellTable().items():
        print("{0}, {1}".format(key, value))

#    ==== test toList ===
    assert sum(table.toList(14)) == 21
#   === test deletePath ====
    table.deletePath(solver1.getPath(), 0)
    assert len(table.cellTable()) == 0


if __name__ == '__main__':
        main()





