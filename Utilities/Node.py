class Node(object):
    def __init__(self, position):
        """
        :param type: string for wall/block/. etc.
        :param position: tuple for the (x,y)
        neighborFour: Valid 4 neighbors
        neighborEight: valid 8 neighbors
        """
        self.__position = position
        self.__neighborFour = [None for i in range(4)]
        self.__neighborEight = [None for i in range(4)]

    def add_Four(self, index, newNode):
        self.__neighborFour[index] = newNode

    def add_Eight(self, index, newNode):
        self.__neighborEight[index] = newNode

    def get_Four(self):
        return self.__neighborFour

    def get_Eight(self):
        return self.__neighborEight

    def get_neighbor(self):
        return self.__neighborFour + self.__neighborEight

    def getPosition(self):
        return self.__position

    def __hash__(self):
        return hash(self.__position)

    def __eq__(self, other):
        if other is None or type(self) != type(other):
            return False
        if self.__position != other.getPosition():
            return False
        return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return "Pos: {0}".format(self.__position)


def main():
    node1 = Node((1, 1))
    node2 = Node((0, 0))
    assert node1 != node2

    node1.add_Four(0, Node((1, 0)))
    node1.add_Four(1, Node((2, 1)))
    node1.add_Four(2, Node((1, 2)))
    node1.add_Four(3, Node((1, 2)))

    node1.add_Eight(2, Node((0, 1)))
    print(node1.get_Four())

    assert node1 != node1.get_Four()[1]

if __name__ == '__main__':
    main()





