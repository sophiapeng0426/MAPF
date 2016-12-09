
class Util2(object):
    def oppositeDir(self, dir):
        if dir == 0:
            return 2
        elif dir == 2:
            return 0
        elif dir == 1:
            return 3
        elif dir == 3:
            return 1

    def moveDir(self, preNode, nextNode):
        """find moving direction of preNode -> nextNode"""
        pos1 = preNode.getPosition()
        pos2 = nextNode.getPosition()
        if pos1[0] == pos2[0] and pos1[1] == pos2[1]:
            return 0
        elif pos1[1] - pos2[1] == 1:
            return 1
        elif pos1[0] - pos2[0] == -1:
            return 2
        elif pos1[1] - pos2[1] == -1:
            return 3
        elif pos1[0] - pos2[0] == 1:
            return 4
        return None

    def withinDis(self, node1, node2):
        if isinstance(node1, tuple):
            return abs(node1[0] - node2[0]) < 2 and abs(node1[1] - node2[1]) < 2
        else:
            return abs(node1.getPosition()[0] - node2.getPosition()[0]) < 2 \
               and abs(node1.getPosition()[1] - node2.getPosition()[1]) < 2

    def posToIndex(self, pos, nsize):
        return pos[0] * nsize + pos[1]

    def indexToPos(self, index, nsize):
        x = index // nsize
        y = index % nsize
        return (x,y)

    # ================= Functions IO ================
    def readTestFile(self, filename):
        """
        extract probleminstance parameters from file
        :param filename:
        :return: size, block, agentlist
        """
        size = 0
        agentNum = 0
        block = {}
        agentList = []
        f = open(filename, 'r')
        for line in f:
            if line[0] != '#':
                c = line.split(' ')
                if c[0] == 'grid':
                    size = int(line[5:7])
                elif c[0] =='block':
                    block[(int(c[2]), int(c[1]))] = (int(c[3]) - int(c[1]) + 1, int(c[4]) - int(c[2]) + 1)
                elif c[0] == 'nets':
                    agentNum = int(c[1])
                elif c[0] == 'net':
                    agentList.append([int(c[1]), (int(c[3]), int(c[2])), (int(c[6]), int(c[5]))])
        f.close()
        print(size)
        print(block)
        print(agentNum)
        print(agentList)
        return size, block, agentNum, agentList


def main():
    test1 = Util2()
    size, block, agentNum, agentList = test1.readTestFile('/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/DMFB/test_12_12_1.in')
    print(size)
    print(block)
    print(agentNum)
    print(agentList)



if __name__ == '__main__':
    main()













