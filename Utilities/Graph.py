from Node import Node
from ProblemMap import ProblemMap


class Graph:
    # constructor: ProblemMap include blocks and size
    #   List of agents (id, start and goal)
    def __init__(self, problemMap):
        """
        for n x n shape
        __nodes: (n-1) x (n-1),
        (x,y) for position (x,y) in the map, None of (x,y) is block/out
        :param problemMap:
        """
        self.__size = problemMap.getHeight() - 1
        self.__map = problemMap
        self.__nodes = [[None for i in range(self.__size)] for j in range(self.__size)]
#         note: nodes[0][1]._position = (0,1)
        self.__generateGraph()

    #   populate nodes list with nodes, populate nodes neighbors
    def __generateGraph(self):
        for r in range(self.__size):
            row = self.__map.getContent()[r]
            for c in range(self.__size):
                if row[c] != '#':
                    self.__nodes[c][r] = Node('.', (c, r)) # does not tell border electrode
        #  populate neighbor nodes
        for i in range(self.__size):
            for j in range(self.__size):
                currentNode = self.__nodes[i][j]
                if currentNode is not None:
                    self.__populateNeighbor(currentNode)

    #  populate node neighbor4 and neighbor8
    def __populateNeighbor(self, node):
        if node is None:
            return
        current = node.getPosition()
        if self.__map.isNodeValid((current[0], current[1] - 1)):
            up = self.__nodes[current[0]][current[1] - 1]
            node.add_Four(0, up)
            node.add_Eight(0, up)
        if self.__map.isNodeValid((current[0] + 1, current[1])):
            # print(self.__nodes[current[0] + 1][current[1]])
            right = self.__nodes[current[0] + 1][current[1]]
            node.add_Four(1, right)
            node.add_Eight(1, right)
        if self.__map.isNodeValid((current[0], current[1] + 1)):
            down = self.__nodes[current[0]][current[1] + 1]
            node.add_Four(2, down)
            node.add_Eight(2, down)
        if self.__map.isNodeValid((current[0] - 1, current[1])):
            left = self.__nodes[current[0] - 1][current[1]]
            node.add_Four(3, left)
            node.add_Eight(3, left)
        if self.__map.isNodeValid((current[0] + 1, current[1] - 1)):
            node.add_Eight(4, self.__nodes[current[0] + 1][current[1] - 1])
        if self.__map.isNodeValid((current[0] + 1, current[1] + 1)):
            node.add_Eight(5, self.__nodes[current[0] + 1][current[1] + 1])
        if self.__map.isNodeValid((current[0] - 1, current[1] + 1)):
            node.add_Eight(6, self.__nodes[current[0] - 1][current[1] + 1])
        if self.__map.isNodeValid((current[0] - 1, current[1] - 1)):
            node.add_Eight(7, self.__nodes[current[0] - 1][current[1] - 1])

    def getNode(self):
        return self.__nodes

    def getMap(self):
        return self.__map

    def plotGraph(self):
        self.__map.plotMap()


def main():
    testMap = ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1})
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


if __name__ == '__main__':
    main()


