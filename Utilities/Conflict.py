class Conflict(object):
    def __init__(self, timeStep, group1, group2):
        self._timeStep = timeStep
        self._group1 = group1
        self._group2 = group2

    def getTimeStep(self):
        return self._timeStep

    def getGroup1(self):
        return self._group1

    def getGroup2(self):
        return self._group2

    def __str__(self):
        return "Group 1: {0}, ".format(self._group1) + "Group 2: {0}, ".format(self._group2) + \
        "timeStep: {0} ".format(self._timeStep)

    def __eq__(self, other):
        """ Compares timeStep, group1 and group2
        :param other:
        :return:
        """
        if other is None or type(self) != type(other):
            return False
        if self._timeStep != other.getTimeStep():
            return False
        if self._group1 != other.getGroup1():
            return False
        return self._group2 == other.getGroup2()


def main():
    pass


if __name__ == '__main__':
    main()