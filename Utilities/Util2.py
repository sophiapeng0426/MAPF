
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
