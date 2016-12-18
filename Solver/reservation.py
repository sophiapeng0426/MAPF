from SingleAgent.Utilities.Coordinate import Coordinate


class Reservation(object):
    """
    No implementation of deletePath, only reserve one path
    """
    def __init__(self):
        """
        _reservedCoordinates: set(coord)
        _agentDestinations: set(pos)
        """
        self._reservedCoordinates = set([])
        self._agentDestinations = set([])
        self._lastTimeStep = 0

    def isEmpty(self):
        return len(self._reservedCoordinates) == 0 and len(self._agentDestinations) == 0

    def reservedCoordinates(self):
        return self._reservedCoordinates

    def agentDestinations(self):
        return self._agentDestinations

    def reservePath(self, path):
        """
        Can only reserve one path for this implementation
        :param path:
        :return:
        """
        if not self.isEmpty():
            self.clear()
        for i in range(len(path)):
            state = path[i]
            for s in state.getSingleAgents():
                self.reserveSingleAgent(s)
        # add destination state
        last = path[-1]
        for s in last.getSingleAgents():
            self.reserveDestination(s.getCoord())

    def reserveSingleAgent(self, s):
        """
        reserve coord for singleAgent and neighbor coordinates
        :param s:
        :return:
        """
        # add itself
        coord = s.getCoord()
        self._reservedCoordinates.add(coord)
        if coord.getTimeStep() > 0:
            coord2 = Coordinate(coord.getTimeStep() - 1, coord.getNode())
            self._reservedCoordinates.add(coord2)
        coord2 = Coordinate(coord.getTimeStep() + 1, coord.getNode())
        self._reservedCoordinates.add(coord2)
        # add neighbor nodes
        for node in coord.getNode().get_neighbor():
            if node is not None:
                neighborCoord = Coordinate(coord.getTimeStep(), node)
                self._reservedCoordinates.add(neighborCoord)
                if coord.getTimeStep() > 0:
                    neighborCoord = Coordinate(coord.getTimeStep() - 1, node)
                    self._reservedCoordinates.add(neighborCoord)
                neighborCoord = Coordinate(coord.getTimeStep() + 1, node)
                self._reservedCoordinates.add(neighborCoord)

    def reserveDestination(self, coord):
        """
        Aadd coord and neighboring coord to self._agentDestinations
        :param coord:
        :return:
        """
        self._lastTimeStep = coord.getTimeStep()
        self._agentDestinations.add(coord.getNode().getPosition())
        for node in coord.getNode().get_neighbor():
            if node is not None:
                self._agentDestinations.add(node.getPosition())

    def isValid(self, state):
        """
        Check if ODState not-violates reservations
        :param state:
        :return:
        """
        # check state violates reservedCoordinates
        if self.isEmpty():
            return True
        for s in state.getSingleAgents():
            thisCoord = s.getCoord()
            if thisCoord in self._reservedCoordinates:
                return False
            # check state not violates destination
            thisPos = thisCoord.getNode().getPosition()
            thisTimeStep = thisCoord.getTimeStep()
            if thisPos in self._agentDestinations:
                if self._lastTimeStep <= thisTimeStep:
                    return False
        return True

    def freeReservation(self, path):
        """not implemented """
        return

    def getLastTimeStep(self):
        return self._lastTimeStep

    def clear(self):
        self._reservedCoordinates.clear()
        self._agentDestinations.clear()
        self._lastTimeStep = 0


def main():
    import time
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap
    from SingleAgent.Solver.AStar.ODAStar import ODAStar

    reservation = Reservation()
    graph2 = Graph(ProblemMap(14, {(2, 5): (5, 2),
                                   (0, 10): (5, 16),
                                   (7, 1): (2, 5),
                                   (8, 6): (4, 2)
                                   }))
    agent2 = [#Agent(0, (0, 4), (0, 9)),
              Agent(0, (0, 6), (3, 0)),
              Agent(1, (0, 2), (9, 4))
              # Agent(3, (13, 6), (4, 2)),
              # Agent(4, (13, 0), (1, 3)),
              # Agent(5, (6, 9), (12, 7))
              ]
    agent3 = [Agent(0, (0, 4), (0, 9))
              # Agent(1, (0, 6), (3, 0)),
              # Agent(2, (0, 2), (9, 4)),
              # Agent(3, (13, 6), (4, 2))
              # Agent(4, (13, 0), (1, 3)),
              # Agent(5, (6, 9), (12, 7))
              ]
    testProblem1 = ProblemInstance(graph2, agent2)
    testProblem2 = ProblemInstance(graph2, agent3)
    testProblem1.plotProblem()
    print()
    testProblem2.plotProblem()

    startTime = time.time()
    solver1 = ODAStar()
    solver1.solve(testProblem1)
    print("solver time: {0} ".format(time.time() - startTime))
    solver1.printPath()
    solver1.visualizePath(testProblem1)

#   =====  test addPath ===
    reservation.reservePath(solver1.getPath())
    for key in reservation.reservedCoordinates():
        print("{0}".format(key))
    print()
    for key in reservation.agentDestinations():
        print("{0}".format(key))
    print(reservation.getLastTimeStep())

#    ==== test violation ===
    solver2 = ODAStar()
    solver2.solve(testProblem2)
    solver2.printPath()
    for state in solver2.getPath():
        print(reservation.isValid(state))

#   === test deletePath ====
    reservation.clear()
    assert reservation.isEmpty()


if __name__ == '__main__':
        main()