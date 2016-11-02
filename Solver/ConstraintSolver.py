import abc


class ConstraintSolver(object):
    __metaclass__ = abc.ABCMeta

    def __init__(self):
        """
        _reservation: {coord, previous coord}
        _visitTable: {coord, [group]}

        """
        self._reservation = None
        self._visitTable = None
        self._cat = None

    def getReservation(self):
        return self._reservation

    def setReservation(self, reservation):
        self._reservation = reservation

    def getVisitTable(self):
        return self._visitTable

    def setVisitTable(self, visitTable):
        self._visitTable = visitTable

    def getCAT(self):
        return self._cat

    def setCAT(self, catTable):
        self._cat = catTable

    @abc.abstractmethod
    def solve(self, problemInstance):
        """ solve initial problem"""

    @abc.abstractmethod
    def getPath(self):
        """get list of states as path"""

    @abc.abstractmethod
    def printPath(self):
        """print found paths"""




