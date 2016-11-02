class Node(object):
    def __init__(self, type, position):
        """
        :param type: string for wall/block/. etc.
        :param position: tuple for the (x,y)
        neighborFour: Valid 4 neighbors
        neighborEight: valid 8 neighbors
        """
        self.__type = type
        self.__position = position
        # self.__x = self.__position[0]
        # self.__y = self.__position[1]
        self.__neighborFour = [None for i in range(4)]
        self.__neighborEight = [None for i in range(8)]

    def add_Four(self, index, newNode):
        self.__neighborFour[index] = newNode

    def add_Eight(self, index, newNode):
        self.__neighborEight[index] = newNode

    def get_Four(self):
        return self.__neighborFour

    def get_Eight(self):
        return self.__neighborEight

    def getType(self):
        return self.__type

    def getPosition(self):
        return self.__position

    def __hash__(self):
        prime = 31
        res = 1
        res = prime * res + hash(self.__position) * prime + hash(self.__type)
        return res

    def __eq__(self, other):
        """
        Node type and position are same
        :param other:
        :return:
        """
        # if self == other:
        #     return True

        if other is None:
            return False
        if type(self) != type(other):
            return False
        if self.__type != other.getType():
            return False
        if self.__position != other.getPosition():
            return False
        return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return "Type: {0}, Position: {1}".format(self.__type, self.__position)


def main():
    node1 = Node('*', (0, 0))
    node2 = Node('*', (0, 0))
    print(node1)
    print(node2)

    print(node1 != node2)

    node1.add_Four(1, Node('*', (1, 0)))
    node1.add_Eight(2, Node('*', (0, 1)))
    print(node1.get_Four())
    print(node1)
    print(node1.get_Four()[1])

    print(node1 != node1.get_Four()[1])

    # print
    # print(node1.__hash__())
#

if __name__ == '__main__':
    main()





