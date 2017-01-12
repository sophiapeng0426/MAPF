class Conflict(object):
    def __init__(self, timeStep, group1, group2, agent1, agent2):
        self._timeStep = timeStep
        self._group1 = group1
        self._group2 = group2
        self._agent1 = agent1
        self._agent2 = agent2

    def getTimeStep(self):
        return self._timeStep

    def getGroup1(self):
        return self._group1

    def getGroup2(self):
        return self._group2

    def getAgent1(self):
        return self._agent1

    def getAgent2(self):
        return self._agent2

    def setAgent(self, agent1, agent2):
        self._agent1 = agent1
        self._agent2 = agent2

    def setGroup(self, group1, group2):
        self._group1 = group1
        self._group2 = group2

    def isEmpty(self):
        if self._agent1 is None:
            return True
        else:
            return False

    def __str__(self):
        return "Group 1: {0}, Group 2: {1}, timeStep: {2}".format(self._group1, self._group2, self._timeStep)

    def __eq__(self, other):
        """ Compares timeStep, group1 and group2
        :param other:
        :return:
        """
        if other is None or type(self) != type(other):
            return False
        if self._timeStep != other.getTimeStep():
            return False
        if self._group1 != other.getGroup1() or self._group2 != other.getGroup2():
            return False
        if self._agent1 != other.getAgent1() or  self._agent2 != other.getAgent2():
            return False
        return True


def main():
    pass


if __name__ == '__main__':
    main()