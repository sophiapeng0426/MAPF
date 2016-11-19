from SingleAgent.Constants import *


class ProblemMap(object):
    # constructor for known content (a 2D matrix of string)
    def __init__(self, height, width, block):
        """
        __content: (n+1) x (n+1) of chars
        :param height:
        :param width:
        :param block: dictionary {(x,y), size}
        """
        self.__height = height + 1
        self.__width = width + 1
        self.__block = block
        self.__content = []

        if isinstance(block, dict):
            self.__generateMap()
        elif isinstance(block, float):
            self.__generateRandomMap()
        else:
            print("Need to specify block")

    # constructor of randomly generated map, need to use *arg * kwargs
    # def __init__(self, height, width):
    #     self._height = height
    #     self._width = width

    # generate content based on specified blocks
    def __generateMap(self):
        """
        :return:
        """
        res = [[Symbols.BLANK for i in range(self.__width)] for j in range(self.__height)]
        # wall *
        for i in range(self.__height):
            res[i][0] = Symbols.WALL
            res[i][self.__width - 1] = Symbols.WALL
        for j in range(self.__width):
            res[0][j] = Symbols.WALL
            res[self.__height - 1][j] = Symbols.WALL
        # add blocks #
        blockSet = set()
        for position, size in self.__block.items():
            if size in (Block.SMALL, Block.MEDIUM, Block.LARGE) and not self.__isBorder(position):
                blockSet.add(position)
                for i in range(size):
                    for j in range(size):
                        newPosition = (position[0] + i, position[1] + j)
                        if not self.__isBorder(newPosition) and not self.__outOfBorder(newPosition):
                            blockSet.add(newPosition)
                        else:
                            print("some components out of border")
        for bpos in blockSet:
            # print(bpos[0],bpos[1])
            res[bpos[1]][bpos[0]] = Symbols.BLOCK

        self.__content = res

    # generate content randomly
    def __generateRandomMap(self):
        # TODO: implement function to random set block
        res = [['.' for i in range(self.__width)] for j in range(self.__height)]
        for i in range(self.__height):
            res[i][0] = Symbols.WALL
            res[i][self.__width - 1] = Symbols.WALL
        for j in range(self.__width):
            res[0][j] = Symbols.WALL
            res[self.__height - 1][j] = Symbols.WALL
        self.__content = res

    # check if a position(tuple) is border of a map
    def __isBorder(self, position):
        return position[0] == 0 or position[1] == 0 or position[0] == self.__width - 1 or position[1] == self.__height - 1

    # check if a position(tuple) out of border of a map
    def __outOfBorder(self, position):
        return position[0] > self.__height - 1 or position[1] > self.__width - 1

    # visualize the generated map
    def plotMap(self):
        for i in self.__content:
            print(' '.join(i))

    def getHeight(self):
        return self.__height

    def getWidth(self):
        return self.__width

    def isNodeValid(self, position):
        """
        check if the position is occupied or out of bound
        :param position: (x,y)
        :return: bool
        """
        if position[0] < 0 or position[1] < 0:
            return False
        if position[0] >= self.__width - 1 or position[1] >= self.__height - 1:
            return False
        if self.__content[position[1]][position[0]] == '#':
            return False
        return True

    def getContent(self):
        return self.__content

def main():
    # res = [['.' for i in range(5)] for j in range(3)]
    # for i in res:
    #     print(' '.join(i))
    testMap = ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1})
    # print(testMap._ProblemMap__outOfBorder((16, 16)))
    # print(testMap._ProblemMap__isBorder((16, 16)))
    print(testMap.isNodeValid((16, 16)))
    print(testMap.isNodeValid((17, 8)))
    print(testMap.isNodeValid((0, -1)))
    # print(testMap.getContent())

    # print(testMap.outOfBorder((16, 1)))

    testMap.plotMap()
    # print(testMap.__dict__)
    # print(testMap.__class__.__name__)

if __name__ == '__main__':
    main()




