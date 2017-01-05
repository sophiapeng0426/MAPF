import abc


class State(object):
    """
    Abstract class for singleAgent and MultiAgents
    """
    __metaclass__ = abc.ABCMeta

    def __init__(self, backPointer):
        """
        :param backPointer:
        """
        self._gValue = None
        self._hValue = None
        self._backPointer = backPointer
        self._conflictViolations = 0
        self._usedElectrode = 0
        # self._extraPins = 0
        # self._visitTable = None

    def predecessor(self):
        return self._backPointer

    def gValue(self):
        return self._gValue

    def hValue(self):
        return self._hValue

    def fValue(self):
        return self.gValue() + self.hValue()
    # def setVariable(self, g, h, c, u):
    #     self._gValue = g
    #     self._hValue = h
    #     self._conflictViolations = c
    #     self._usedElectrode = u

    def usedElectrode(self):
        return self._usedElectrode

    def conflictViolations(self):
        return self._conflictViolations

    def isRoot(self):
        return self._backPointer is None

    # def __str__(self):
    #     return "gValue: {0} ".format(self._gValue) + "hValue: {0} ".format(self._hValue)
    #     # "g+h: {0} ".format(self._gValue + self._hValue)

    # def initVisitTable(self, pathList):
    #     self._visitTable = VisitTable()
    #     self._visitTable.fillTable(pathList)

    # def visitTable(self):
    #     return self._visitTable

    # def extraPins(self):
    #     return self._extraPins

    # @abc.abstractmethod
    # def updateVisitTable(self, table):
    #     """
    #     :param visitTable:
    #     :return:
    #     """

    """================== astar functions =================
    """
    @abc.abstractmethod
    def expand(self, problemInstance):
        """
        expand current state according to problemInstance
        :param problemInstance:
        :return: a list if states
        """

    @abc.abstractmethod
    def goalTest(self, problemInstance):
        """
        test if state is goal state
        :param problemInstance:
        :return:
        """
    @abc.abstractmethod
    def timeStep(self):
        """return timestep of this state"""

    """=========== functions to update member variables =========
    """
    @abc.abstractmethod
    def setHeuristic(self, mode, input):
        """
        Set hValue
        :param problemInstance:
        :return:
        """
    @abc.abstractmethod
    def calculateCost(self, problemInstance):
        """
        Calcualte gValue
        :return:
        """
    @abc.abstractmethod
    def updateCATViolations(self, cat):
        """
        update _conflictViolations
        :param cat:
        :return:
        """

    @abc.abstractmethod
    def updateUsedElectrode(self, table, nsize):
        """
        udpate _usedElectrode
        :param table:
        :return:
        """
    """================= functions to compare ===============
    """
    @abc.abstractmethod
    def __eq__(self, other):
        """
        for comparable object
        :param other:
        :return: bool
        """
    def __ne__(self, other):
        return not self.__eq__(other)

    @abc.abstractmethod
    def __hash__(self):
        """
        for hash value
        :return:
        """

    def __lt__(self, other):
        """Compare two state for priority queue
        Breaking tie considers smaller hValue
        :param other: same candidate state
        :return:
        """
        """
        TODO: break tie considering _usedElectrode (visitTable)
            ; and _conflictViolations (CAT)
        """
        assert other is not None, "State can not compare with None type"
        assert not other.hValue() is None or self.hValue() is None, 'set hvalue first.'

        dif = self.gValue() - other.gValue() + self.hValue() - other.hValue()
        # breaking tie considering hValue
        if dif == 0:
            dif2 = self.conflictViolations() - other.conflictViolations()
            if dif2 == 0:
                return self.usedElectrode() - other.usedElectrode() < 0
            else:
                return dif2 < 0
            # return self.hValue() - other.hValue() < 0
        else:
            return dif < 0
        # return dif < 0