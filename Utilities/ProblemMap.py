from SingleAgent.Constants import *


class ProblemMap(object):
    # constructor for known content (a 2D matrix of string)
    def __init__(self, nsize, block):
        """
        __content: (n+1) x (n+1) of chars
        :param height:
        :param width:
        :param block: dictionary {(x,y), (m,n)}
        """
        self.__size = nsize + 1
        self.__content = []
        assert isinstance(block, dict)
        self._generateMap(block)

    def _generateMap(self, block):
        res = [[Symbols.BLANK for i in range(self.__size)] for j in range(self.__size)]
        # wall *
        for i in range(self.__size):
            res[i][0] = Symbols.WALL
            res[i][self.__size - 1] = Symbols.WALL
        for j in range(self.__size):
            res[0][j] = Symbols.WALL
            res[self.__size - 1][j] = Symbols.WALL
        # add blocks #
        for pos, size in block.items():
            for i in range(size[1]):
                for j in range(size[0]):
                    x = pos[0] + i
                    y = pos[1] + j
                    if self._existCell(pos) and not self.__outOfBorder((x,y)):
                        res[y][x] = Symbols.BLOCK
        self.__content = res

    def _existCell(self, pos):
        if pos[0] == self.__size - 1 or pos[1] == self.__size - 1:
            return False
        else:
            return True

    def __outOfBorder(self, position):
        return position[0] > self.__size - 1 or position[1] > self.__size - 1 or position[0] < 0 or position[1] < 0

    # visualize the generated map
    def plotMap(self):
        for i in self.__content:
            print(' '.join(i))

    def getSize(self):
        return self.__size - 1

    def isNodeValid(self, position):
        """
        check if the position is occupied or out of bound
        :param position: (x,y)
        :return: bool
        """
        if position[0] < 0 or position[1] < 0:
            return False
        if position[0] >= self.__size - 1 or position[1] >= self.__size - 1:
            return False
        if self.__content[position[1]][position[0]] == '#':
            return False
        return True

    def getContent(self):
        return self.__content

def main():
    testMap = ProblemMap(14, {(2, 5): (5, 2),
                              (0, 10): (5, 16),
                              (7, 1): (2, 5),
                              (8, 6): (4, 2)
                              })
    testMap.plotMap()

    assert testMap.isNodeValid((16, 16)) is False
    assert testMap.isNodeValid((17, 8)) is False
    assert testMap.isNodeValid((0, -1)) is False
    assert testMap.isNodeValid((13, 0)) is True


if __name__ == '__main__':
    main()




