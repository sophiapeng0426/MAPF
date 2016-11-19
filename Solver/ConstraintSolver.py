import abc


class ConstraintSolver(object):
    __metaclass__ = abc.ABCMeta

    def __init__(self):
        """
        _reservation: {coord, previous coord}
        _visitTable: {coord, [group]}

        """
        self._reservation = None
        self._cat = None
        self._usedTable = None

    def getReservation(self):
        return self._reservation

    def setReservation(self, reservation):
        self._reservation = reservation

    # def getVisitTable(self):
    #     return self._visitTable
    #
    # def setVisitTable(self, visitTable):
    #     self._visitTable = visitTable

    def getCAT(self):
        return self._cat

    def setCAT(self, catTable):
        self._cat = catTable

    def getUsedTable(self):
        return self._usedTable

    def setUsedTable(self, usedTable):
        self._usedTable = usedTable

    # @abc.abstractmethod
    # def solve(self, problemInstance, pathList):
    #     """ solve initial problem"""

    @abc.abstractmethod
    def getPath(self):
        """get list of states as path"""

    @abc.abstractmethod
    def printPath(self):
        """print found paths"""




