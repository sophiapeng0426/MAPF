from SingleAgent.Utilities.Coordinate import Coordinate


class ConflictAvoidanceTable(object):
    def __init__(self):
        """
        _agentDestination: {position: {id, timeStep}}
        """
        self._groupOccupantTable = {}
        self._agentDestination = {}
        self._groupToAgentIndex = {}
        self._initial = False
        # self._earlistConflictWhileAdding = None

    def getSize(self):
        return len(self._groupOccupantTable), len(self._agentDestination)

    def groupOccupantTable(self):
        return self._groupOccupantTable

    def agentDestination(self):
        return self._agentDestination

    def isInitialized(self):
        return self._initial

    def isEmpty(self):
        return len(self._groupOccupantTable) == 0 and len(self._agentDestination) == 0

    def violation(self, state):
        """ return num of violation in state
        :param state:
        :return:
        """
        movenext = state.getMoveNext()
        if movenext == 0:
            index = len(state.getSingleAgents())
        else:
            index = movenext
        res = 0
        for s in state.getSingleAgents()[0: index]:
            res += self._violationSingleState(s)
        return res

    # def violation(self, state):
    #     from SingleAgent.States.ODState import ODState
    #     if isinstance(state, ODState):
    #         movenext = state.getMoveNext()
    #         if movenext == 0:
    #             index = len(state.getSingleAgents())
    #         else:
    #             index = movenext
    #     else:
    #         index = len(state.getSingleAgents())
    #     for singleAgentState in state.getSingleAgents()[0: index]:
    #         if self._violationSingleState(singleAgentState):
    #             return True
    #     return False

    def _violationSingleState(self, singleAgentState):
        """
        return set of violation groups
        :param singleAgentState:
        :return:
        """
        coordList = []
        coord = singleAgentState.getCoord()
        coordList.append(coord)
        coordList.append(Coordinate(coord.getTimeStep() + 1, coord.getNode()))
        coordList.append(Coordinate(coord.getTimeStep() - 1, coord.getNode()))
        # violation in groupOccupantTable
        conflictGroup = set([])
        for coord in coordList:
            if coord in self._groupOccupantTable:
                conflictGroup |= self._groupOccupantTable[coord]

        # violation in destination
        pos = coord.getNode().getPosition()
        if pos in self._agentDestination:
            preDic = self._agentDestination[pos]
            for id, t in preDic.items():
                if coord.getTimeStep() >= t - 1:
                    conflictGroup |= set([id])

        conflictGroup = list(conflictGroup)
        totalconflict = 0
        for group in conflictGroup:
            totalconflict += len(self._groupToAgentIndex[group])
        return totalconflict

    def addPath(self, path, id):
        """
        :param path:
        :return:
        """
        # print("cat add path {0}".format(id))
        self._initial = True
        self._groupToAgentIndex[id] = [x.getAgentId() for x in path[0].getSingleAgents()]
        # paths include only OD states
        for i in range(len(path)):
            state = path[i]
            # newPositions = [None for i in range(len(state.getSingleAgents()))]
            for s in state.getSingleAgents():
                self._addSingleAgentState(s, id)
        # add destination state
        last = path[-1]
        for s in last.getSingleAgents():
            self._addDestination(s.getCoord(), id)

    def _addSingleAgentState(self, s, id):
        # add itself
        coord = s.getCoord()
        self._addCoordinate(coord, id)
        # add neighbor nodes
        for node in coord.getNode().get_neighbor():
            if node is not None:
                neighborCoord = Coordinate(coord.getTimeStep(), node)
                self._addCoordinate(neighborCoord, id)

    def _addCoordinate(self, coord, id):
        if coord not in self._groupOccupantTable:
            self._groupOccupantTable[coord] = set([id])
        else:
            self._groupOccupantTable[coord].add(id)

    def _addDestination(self, coord, id):
        self._addDestinationCoord(coord, id)
        for node in coord.getNode().get_neighbor():
            if node is not None:
                newCoord = Coordinate(coord.getTimeStep(), node)
                self._addDestinationCoord(newCoord, id)

    def _addDestinationCoord(self, coordinate, id):
        thisPos = coordinate.getNode().getPosition()
        thisTimeStep = coordinate.getTimeStep()
        if thisPos not in self._agentDestination:
            self._agentDestination[thisPos] = {id: thisTimeStep}
        else:
            preDic = self._agentDestination[thisPos]
            if id not in preDic:
                preDic[id] = thisTimeStep
            elif preDic[id] > thisTimeStep:
                preDic[id] = thisTimeStep

    def deletePath(self, path, id):
        """
        :param path:
        :return:
        """
        # print("cat delete path {0}".format(id))
        del self._groupToAgentIndex[id]
        # delete states in paths
        for i in range(len(path)):
            state = path[i]
            for s in state.getSingleAgents():
                self._deleteSingleAgentState(s, id)
        # delete destination state
        last = path[-1]
        for s in last.getSingleAgents():
            self._deleteDestination(s.getCoord(), id)

    def _deleteSingleAgentState(self, s, id):
        coord = s.getCoord()
        self._deleteCoordinate(coord, id)
        for node in coord.getNode().get_neighbor():
            neighborCoord = Coordinate(coord.getTimeStep(), node)
            self._deleteCoordinate(neighborCoord, id)

    def _deleteCoordinate(self, coord, id):
        if coord in self._groupOccupantTable:
            if id in self._groupOccupantTable[coord]:
                self._groupOccupantTable[coord].remove(id)
                if len(self._groupOccupantTable[coord]) == 0:
                    del self._groupOccupantTable[coord]

    def _deleteDestination(self, coord, id):
        self._deleteDestinationCoord(coord, id)
        for node in coord.getNode().get_neighbor():
            if node is not None:
                newCoord = Coordinate(coord.getTimeStep(), node)
                self._deleteDestinationCoord(newCoord, id)

    def _deleteDestinationCoord(self, coordinate, id):
        thisPos = coordinate.getNode().getPosition()
        if thisPos in self._agentDestination:
            preDic = self._agentDestination[thisPos]
            if id in preDic:
                del preDic[id]
                if len(preDic) == 0:
                    del self._agentDestination[thisPos]

    def clear(self):
        self._groupOccupantTable.clear()
        self._agentDestination.clear()
        self._groupToAgentIndex.clear()
        self._initial = False


def main():
    import time
    from SingleAgent.Utilities.ProblemInstance import ProblemInstance
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap
    from SingleAgent.Solver.AStar.ODAStar import ODAStar


    graph2 = Graph(ProblemMap(14, {(2, 5): (5, 2),
                                   (0, 10): (5, 16),
                                   (7, 1): (2, 5),
                                   (8, 6): (4, 2)
                                   }))
    agent1 = [#Agent(0, (0, 4), (0, 9)),
              Agent(1, (0, 6), (3, 0)),
              Agent(2, (0, 2), (9, 4))
              # Agent(3, (13, 6), (4, 2)),
              # Agent(4, (13, 0), (1, 3)),
              # Agent(5, (6, 9), (12, 7))
              ]
    agent2 = [Agent(0, (0, 4), (0, 9))
              # Agent(1, (0, 6), (3, 0)),
              # Agent(2, (0, 2), (9, 4)),
              # Agent(3, (13, 6), (4, 2))
              # Agent(4, (13, 0), (1, 3)),
              # Agent(5, (6, 9), (12, 7))
              ]
    agent3 = [#Agent(0, (0, 4), (0, 9))
              # Agent(1, (0, 6), (3, 0)),
              # Agent(2, (0, 2), (9, 4)),
              Agent(3, (13, 6), (4, 2)),
              Agent(4, (13, 0), (1, 3)),
              Agent(5, (6, 9), (12, 7))
              ]
    testProblem1 = ProblemInstance(graph2, agent1)
    testProblem2 = ProblemInstance(graph2, agent2)
    testProblem3 = ProblemInstance(graph2, agent3)
    testProblem1.plotProblem()
    print()
    testProblem2.plotProblem()

    solver1 = ODAStar()
    solver1.solve(testProblem1)
    solver1.printPath()
    solver1.visualizePath(testProblem1)

#   =====  test addPath ===
    cat = ConflictAvoidanceTable()
    cat.addPath(solver1.getPath(), 0)
    for key, value in cat.groupOccupantTable().items():
        print("{0}, {1}".format(key, value))
    print()
    for key, value in cat.agentDestination().items():
        print("{0}, {1}".format(key, value))

#    ==== test violation ===
    solver2 = ODAStar()
    solver2.solve(testProblem2)
    print("path 2:")
    solver2.printPath()

    num = cat.violation(solver2.getPath()[0])
    assert num == 2

    num = cat.violation(solver2.getPath()[1])
    assert num == 2

#   === test deletePath ====
    cat.deletePath(solver1.getPath(), 0)
    assert len(cat.groupOccupantTable()) == 0
    assert len(cat.agentDestination()) == 0


if __name__ == '__main__':
        main()