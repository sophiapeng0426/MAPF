from Queue import PriorityQueue
from SingleAgent.Solver.ConstraintSolver import ConstraintSolver
from SingleAgent.Utilities.StateClosedList import StateClosedList
from SingleAgent.Utilities.ProblemInstance import ProblemInstance


class GeneticAStar(ConstraintSolver):
    def __init__(self):
        """
        _openList: priority queue
        _closeList: stateCloseList
        _goalState: result goal state (used for reconstruct path)
        """
        """TODO:
        reservation table
        cat table
        """
        super(GeneticAStar, self).__init__()
        self._openList = PriorityQueue()
        self._closeList = StateClosedList()
        self._goalState = None
        self._heuristic = None

    def solve(self, problemInstance):
        """ solver for singleAgent and multiAgent
        :param problemInstance:
        :return:
        """
        """
        TODO: more efficient data structure for openList
        Do not setUsedElectrode/cat if not initialized
        Do not setcat if isEmpty
        """
        assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
        self.init(problemInstance)

        root = self.createRoot(problemInstance)
        # self.setHeuristic(root, 'manhatten', problemInstance)
        self.setHeuristic(root, 'trueDistance', self._heuristic)
        self._setTables(root, problemInstance)

        # if pathList is not None:
        #     root.setUsedElectrode(self.getUsedTable())
        self._openList.put(root)
        self._closeList.add(root)

        while not self._openList.empty():
            currentState = self._openList.get()

            # if self._openList.qsize() % 5000 == 0:
                # print("OpenList size: {0};  closedList size ~: {1}".format(self._openList.qsize(),
                #                      self.closeList().size() - self._openList.qsize()))
                # print("pop state: {0}".format(currentState))

            # self._closeList.add(currentState)

            # reach goal state
            if self.isGoal(currentState, problemInstance):
                if currentState.timeStep() >= self.getReservation().getLastTimeStep():
                    print("%% current time: {0}, lts: {1}".format(currentState.timeStep(),
                                                                  self.getReservation().getLastTimeStep()))
                    self._goalState = currentState
                    return True
                else:
                    print("%%% put goal state back %%%")
                    potentialStates = currentState.expand(problemInstance)
                    for s in potentialStates:
                        if s == currentState:
                            # TODO: generate this directly by copy if works
                            self.setHeuristic(s, 'trueDistance', self._heuristic)
                            self._setTables(s, problemInstance)
                            self._openList.put(s)

            # not reach goal state
            else:
                potentialStates = currentState.expand(problemInstance)
                for s in potentialStates:
                    if self.getReservation().isValid(s) and not self._closeList.contains(s):
                        # self.setHeuristic(s, 'manhatten', problemInstance)
                        self.setHeuristic(s, 'trueDistance', self._heuristic)
                        self._setTables(s, problemInstance)

                        # if pathList is not None:
                        #     s.setUsedElectrode(self._usedTabl
                        self._openList.put(s)
                        self._closeList.add(s)
        return False

    def init(self, problemInstance):
        """
        :param problemInstance:
        :param pathList:
        :return:
        """
        from TDHeuristic import TDHeuristic
        while not self._openList.empty():
            self._openList.get()
        self._closeList.clear()
        self._goalState = None
        # init TDHeuristic
        self._heuristic = TDHeuristic(problemInstance)
        # print("usedtable size: {0}".format(self.getUsedTable().getSize()))
        # print("cat size: {0}".format(self.getCAT().getSize()))

        # initialize electrode used table/ heuristic
        # if pathList is not None:
        #     usedTable = UsedTable()
        #     usedTable.fillTable(pathList)
        #     self.setUsedTable(usedTable)

        # initialize reservation, cat

    def getHeuristicTable(self):
        return self._heuristic

    def setHeuristic(self, s, mode, input):
        s.setHeuristic(mode, input)

    def _setTables(self, s, problemInstance):
        """
        set s._conflictViolations and s._usedElectrode
        :param s: multiagentstate or ODstate, not implemented for single agentstate
        :return:
        """
        nsize = problemInstance.getGraph().getSize()
        if self.getUsedTable().isInitialized() is True:
            s.updateUsedElectrode(self.getUsedTable(), nsize)
        if self.getCAT().isInitialized() is True and self.getCAT().isEmpty() is False:
            s.updateCATViolations(self.getCAT())

    def isGoal(self, s, problemInstance):
        return s.goalTest(problemInstance)

    def getPath(self):
        """ Get list of states as paths
        :return:
        """
        pathList = []
        if self._goalState is None:
            return pathList

        s = self._goalState
        while s is not None:
            pathList.append(s)
            s = s.predecessor()
        return pathList[::-1]

    def printPath(self):
        """
        :return: print list of states as path
        """
        pathList = self.getPath()
        if len(pathList) == 0:
            print("No path to print")
        for s in pathList:
            print(s)

    def closeList(self):
        return self._closeList

    def createRoot(self, problemInstance):
        """create root node for AStar solver"""
        pass

    def __str__(self):
        return "AStar"
