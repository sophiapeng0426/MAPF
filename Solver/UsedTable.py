class UsedTable(object):
    def __init__(self, problemInstance):
        self._size = problemInstance.getGraph().getSize()
        self._cellList = [0 for i in range(self._size * self._size)]

    def fillTable(self, pathList):
        """ fill nodeList with otherPaths
        :param pathList1:
        :param timeit: report time to generate filltable
        :return:
        """
        pathList = filter(lambda x: x is not None, pathList)
        for path in pathList:
            for j in range(len(path)):
                thisState = path[j]
                for s in thisState.getSingleAgents():
                    pos = s.getCoord().getNode().getPosition()
                    self._cellList[pos[0] * self._size + pos[1]] = 1

    def cellList(self):
        return self._cellList

    def cellListCopy(self):
        return self._cellList[:]

    def __str__(self):
        return 'a cellList'





