import time
from SingleAgent.Utilities.Node import Node


class VisitTable(object):
    def __init__(self):
        self._nodeList = {}

    def setNodeList(self, nodeList):
        self._nodeList = nodeList

    def fillTable(self, pathList1, timeit = False):
        """ fill nodeList with otherPaths
        :param pathList:
        :return:
        """
        startTime = time.time()
        pathList = filter(lambda x: x is not None, pathList1)
        for i in range(len(pathList)):
            path = pathList[i]
            for j in range(len(path) - 1):
                # print("== add state at time: {0} ==".format(j))
                thisState = path[j]
                nextState = path[j+1]
                singleAgents = thisState.getSingleAgents()
                nextDir = nextState.getDir()
                thisDir = thisState.getDir()
                for nth, agent in enumerate(singleAgents):
                    # print("put singleAgent: {0}".format(agent) + "next direction: {0}".format(nextDir[nth]) +
                    #       "this direction:{0}".format(thisDir[nth]))
                    node = agent.getCoord().getNode()
                    timeStep = agent.getCoord().getTimeStep()
                    pinNum = timeStep % 3
                    # print("add pinnum: {0}".format(pinNum))
                    self.addNode(node, pinNum)

            # first state in path
                    if j == 0:
                        self.addNeighborNodes(node, nextDir[nth], None, 0)
                    else:
                        self.addNeighborNodes(node, nextDir[nth], thisDir[nth], 2)
            #  for last state in path
            singleAgents = nextState.getSingleAgents()
            thisDir = nextState.getDir()
            for nth, agent in enumerate(singleAgents):
                node = agent.getCoord().getNode()
                timeStep = agent.getCoord().getTimeStep()
                pinNum = timeStep % 3
                self.addNode(node, pinNum)
                self.addNeighborNodes(node, None, thisDir[nth], 1)

        if timeit == True:
            print("Fill visit table time: {0}".format(time.time() - startTime))

    def addNeighborNodes(self, node, nextDir, preDir, preventDir):
        """Add neighbor node to nodeList
        preventDir: prevent from assigning 4
                    to: 0, from: 1, to and from: 2
        """
        neighbor = node.get_Four()
        res = neighbor[:]

        if preventDir == 0:
            if nextDir is not None and nextDir != 0:
                nextDir -= 1
                res[nextDir] = None

        if preventDir == 1:
            if preDir is not None and preDir != 0:
                preDir -= 1
                res[self._oppositeDir(preDir)] = None

        if preventDir == 2:
            if nextDir is not None and nextDir != 0 and preDir is not None and preDir != 0:
                nextDir -= 1
                preDir -= 1
                res[nextDir] = None
                res[self._oppositeDir(preDir)] = None
            elif preDir is None or preDir == 0:
                res = []

        #===== debug =====
        # index = []
        # for i in range(len(res)):
        #     if res[i] is not None:
        #         index.append(i)
        # print("add neigbhbors from directions[0-3]: {0}".format(index))

        res = filter(lambda x: x is not None, res)
        for node in res:
            self.addNode(node, 4)

    def _oppositeDir(self, dir):
        if dir == 0:
            return 2
        elif dir == 2:
            return 0
        elif dir == 1:
            return 3
        elif dir == 3:
            return 1

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



def main():
    table = VisitTable()
    node1 = Node('*', (0, 0))
    table.addNode(node1, 1)
    # testdic = {}
    # testdic[node1] = set([1])
    # testdic[node1].add(2)
    # print(testdic)

if __name__ == "__main__":
    main()



