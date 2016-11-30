class Reservation(object):
    def __init__(self):
        self._reservedCoordinates = {}
        self._agentDestination = {}
        self._lastTimeStep = None

    def reservePath(self, path):
        """
        :param path:
        :return:
        """

    def isValid(self, state):
        """
        :param state:
        :return:
        """

    def reserveDestination(self, coordinate):
        """
        :param coordinate:
        :return:
        """

    def getLastTimeStep(self):
        return self._lastTimeStep

    def clear(self):
        self._reservedCoordinates.clear()
        self._agentDestination.clear()
        self._lastTimeStep = None


