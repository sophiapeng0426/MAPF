from Node import Node


class Coordinate(object):
    def __init__(self, timeStep, node):
        assert isinstance(node, Node), "Input is not Node"
        assert isinstance(timeStep, int), "Input is not int (timestep)"
        self.__timeStep = timeStep
        self.__node = node

    def getTimeStep(self):
        return self.__timeStep

    def getNode(self):
        return self.__node

    def setTimeStep(self, timeStep):
        self.__timeStep = timeStep

    def __eq__(self, other):
        """
        Node + timeStep
        :param other:
        :return:
        """
        if other is None:
            if self.__node is not None:
                return False
            else:
                return True
        if type(self) != type(other):
            return False
        if other.getNode() is None:
            return False
        if other.getNode() != self.__node:
            print("node")
            print(other.getNode())
            print(self.__node)
            return False
        if other.getTimeStep() != self.__timeStep:
            return False
        return True

    def __hash__(self):
        """
        Node + timeStep
        :return:
        """
        prime = 31
        result = 1
        if self.__node is None:
            result = prime * result
        else:
            result = prime * result + self.__node.__hash__()
        result = prime * result + hash(self.__timeStep)
        return result

    def __str__(self):
        s1 = "timeStep: {0}, ".format(self.__timeStep)
        s2 = "Node: ({0},{1})".format(self.__node.getType(), self.__node.getPosition())
        return "Coordinate: " + s1 + ' ' + s2


def main():
    node1 = Node('.', (2, 2))
    coord1 = Coordinate(0, node1)
    coord2 = coord1
    assert coord1 == coord2, "test1 fail"

    coord3 = Coordinate(0, Node('.', (2, 2)))
    assert coord3 == coord1, "test2 fail"

    coord4 = Coordinate(1, Node('.', (2, 2)))
    assert not coord4 == coord1, "test3 fail"

    print(coord1.__dict__)

if __name__ == '__main__':
    main()
