import time
from SingleAgent.Utilities.Util2 import Util2
# from SingleAgent.Utilities.Node import Node


class VisitTable(object):
    def __init__(self):
        self._nodeList = {}

    def setNodeList(self, nodeList):
        self._nodeList = nodeList

    def fillTable(self, pathList1, timeit=False):
        """ fill nodeList with otherPaths
        :param pathList1:
        :param timeit: report time to generate filltable
        :return:
        """
        startTime = time.time()
        pathList = filter(lambda x: x is not None, pathList1)
        for path in pathList:
            for j in range(len(path)):
                thisState = path[j]
                if j == len(path) - 1:
                    nextState = None
                else:
                    nextState = path[j + 1]
                prevState = thisState.predecessor()

                for n in range(len(thisState.getSingleAgents())):
                    thisNode = thisState.getSingleAgents()[n].getCoord().getNode()
                    # get preDir
                    if prevState is not None:
                        prevNode = prevState.getSingleAgents()[n].getCoord().getNode()
                        preDir = Util2().moveDir(thisNode, prevNode)
                    else:
                        preDir = None
                    # get nextDir
                    if nextState is not None:
                        nextNode = nextState.getSingleAgents()[n].getCoord().getNode()
                        nextDir = Util2().moveDir(thisNode, nextNode)
                    else:
                        nextDir = None

                    timeStep = thisState.getSingleAgents()[n].getCoord().getTimeStep()
                    pinNum = timeStep % 3
                    self.addNode(thisNode, pinNum)
                    if j == 0:
                        self.addNeighborNodes(thisNode, nextDir, None, 'to')
                    elif j == len(path) - 1:
                        self.addNeighborNodes(thisNode, None, preDir, 'from')
                    else:
                        self.addNeighborNodes(thisNode, nextDir, preDir, 'both')
        if timeit is True:
            print("Fill visit table time: {0}".format(time.time() - startTime))

    def addNeighborNodes(self, node, nextDir, preDir, preventDir):
        """ Add neighbor node to nodeList
        :param node:
        :param nextDir:
        :param preDir:
        :param preventDir: prevent from assigning 4
        :return:
        """
        res = node.get_Four()[:]

        if preventDir == 'to':
            if nextDir is not None and nextDir != 0:
                nextDir -= 1
                res[nextDir] = None

        if preventDir == 'from':
            if preDir is not None and preDir != 0:
                preDir -= 1
                res[preDir] = None

        if preventDir == 'both':
            if nextDir is not None and nextDir != 0 and preDir is not None and preDir != 0:
                nextDir -= 1
                preDir -= 1
                res[nextDir] = None
                res[preDir] = None
            if nextDir is None:
                if preDir is not None:
                    preDir -= 1
                    res[preDir] = None
            if preDir is None:
                if nextDir is not None:
                    nextDir -= 1
                    res[nextDir] = None
        #===== debug =====
        # index = []
        # for i in range(len(res)):
        #     if res[i] is not None:
        #         index.append(i)
        # print("add neigbhbors from directions[0-3]: {0}".format(index))
        res = filter(lambda x: x is not None, res)
        for node in res:
            self.addNode(node, 4)
    #
    # def _oppositeDir(self, dir):
    #     if dir == 0:
    #         return 2
    #     elif dir == 2:
    #         return 0
    #     elif dir == 1:
    #         return 3
    #     elif dir == 3:
    #         return 1

    def addNode(self, node, pinNum):
        if node in self._nodeList:
            self._nodeList[node].add(pinNum)
        else:
            self._nodeList[node] = set([pinNum])

    # def addCoord(self, node, pin):
    #     """
    #     TODO: add coord to _nodeList
    #     :param coord:
    #     :return:
    #     """
    #
    # def deleteCoord(self, coord):
    #     """
    #     TODO: delete coord from _nodeList, may not be necessary
    #     :param coord:
    #     :return:
    #     """

    def getExtraPins(self):
        extraPins = 0
        for key, value in self._nodeList.iteritems():
            if len(value) > 1:
                extraPins += 1
        return extraPins

    def size(self):
        return len(self._nodeList)

    def copy(self):
        newDict = {}
        for key, value in self._nodeList.iteritems():
            newDict[key] = value.copy()
        newVisitTable = VisitTable()
        newVisitTable.setNodeList(newDict)
        return newVisitTable

    def __str__(self):
        printList = []
        for key, value in self._nodeList.items():
            printList.append(str(key)[9:] + ':' + str(value))
        return '\n'.join(printList)





