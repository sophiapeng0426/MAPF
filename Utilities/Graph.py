from Node import Node
from ProblemMap import ProblemMap
from SingleAgent.Constants import *


class Graph:
    def __init__(self, problemMap):
        """ nodes' neighbor generated in graph
        __nodes: (n-1) x (n-1), (x,y) for position (x,y) in the map, None of (x,y) is block/out
        :param problemMap: 2D matrix of string
        """
        self.__size = problemMap.getSize()
        self.__map = problemMap
        self.__nodes = [[None for i in range(self.__size)] for j in range(self.__size)]
#         note: nodes[0][1]._position = (0,1)
        self.__generateGraph()

    def __generateGraph(self):
        """ populate nodes list with nodes, populate nodes neighbors
        """
        for r in range(self.__size):
            for c in range(self.__size):
                if self.__map.getContent()[r][c] != '#':
                    self.__nodes[c][r] = Node((c, r))  # does not tell border electrode
        #  populate neighbor nodes
        for i in range(self.__size):
            for j in range(self.__size):
                currentNode = self.__nodes[i][j]
                if currentNode is not None:
                    self.__populateNeighbor(currentNode)

    #  populate node neighbor4 and neighbor8
    def __populateNeighbor(self, node):
        """
        :param node: center Node
        :return:
        """
        if node is None:
            return
        current = node.getPosition()
        if self.__map.isNodeValid((current[0], current[1] - 1)):
            up = self.__nodes[current[0]][current[1] - 1]
            node.add_Four(Position.UP, up)
        if self.__map.isNodeValid((current[0] + 1, current[1])):
            right = self.__nodes[current[0] + 1][current[1]]
            node.add_Four(Position.RIGHT, right)
        if self.__map.isNodeValid((current[0], current[1] + 1)):
            down = self.__nodes[current[0]][current[1] + 1]
            node.add_Four(Position.DOWN, down)
        if self.__map.isNodeValid((current[0] - 1, current[1])):
            left = self.__nodes[current[0] - 1][current[1]]
            node.add_Four(Position.LEFT, left)
        if self.__map.isNodeValid((current[0] + 1, current[1] - 1)):
            node.add_Eight(Position.UPRIGHT, self.__nodes[current[0] + 1][current[1] - 1])
        if self.__map.isNodeValid((current[0] + 1, current[1] + 1)):
            node.add_Eight(Position.DOWNRIGHT, self.__nodes[current[0] + 1][current[1] + 1])
        if self.__map.isNodeValid((current[0] - 1, current[1] + 1)):
            node.add_Eight(Position.DOWNLEFT, self.__nodes[current[0] - 1][current[1] + 1])
        if self.__map.isNodeValid((current[0] - 1, current[1] - 1)):
            node.add_Eight(Position.UPLEFT, self.__nodes[current[0] - 1][current[1] - 1])

    def getSize(self):
        return self.__size

    def getNode(self):
        return self.__nodes

    def getMap(self):
        return self.__map

    def plotGraph(self):
        self.__map.plotMap()


def main():
    import sys
    sys.setrecursionlimit(5000)

    testMap = ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)})
    graph1 = Graph(testMap)

    node1 = graph1.getNode()[3][1]
    print(node1.get_Four())
    node2 = graph1.getNode()[3][2]
    print(node2)
    node3 = graph1.getNode()[4][0]
    print(node3.get_Four())
    node4 = graph1.getNode()[9][2]
    print(node4.get_Eight())

    graph1.plotGraph()

#     ==== test graph pickle ====
    import pickle
    # with open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}.pickle'.format('testGraph'),
    #           'wb') as f:
    #     pickle.dump(graph1, f)

#     print(graph1.__dict__)

    with open('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/SingleAgent/Result/{0}.pickle'.format('testGraph'),
              'rb') as f:
        newgraph = pickle.load(f)
    newgraph.plotGraph()


if __name__ == '__main__':
    main()


