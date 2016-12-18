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
        super(GeneticAStar, self).__init__()
        self._openList = PriorityQueue()
        self._closeList = StateClosedList()
        self._goalState = None
        self._heuristic = None
        self._ignoreCost = False

    def solve(self, problemInstance):
        """ solver for singleAgent and multiAgent
        :param problemInstance:
        :return:
        """
        """
        Do not setUsedElectrode/cat if not initialized
        Do not setcat if isEmpty
        """
        assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
        self.init(problemInstance)

        maxgValue = problemInstance.getGraph().getSize() * 4
        maxgValue = maxgValue * self._heuristic.nAgent()

        root = self.createRoot(problemInstance)
        self.setHeuristic(root, 'trueDistance', self._heuristic)
        self._setTables(root, problemInstance)
        self._openList.put(root)

        while not self._openList.empty() and self._closeList.size() < 1500000:
            currentState = self._openList.get()

            if self._closeList.size() % 5000 == 0:
                toPrint = True
            else:
                toPrint = False
            if toPrint:
                print("OpenList size: {0};  closedList size ~: {1}".format(self._openList.qsize(),
                                                                           self.closeList().size()))
                print("timeStep: {0}, pop: {1}".format(currentState.timeStep(), currentState))

            # self._closeList.add(currentState)

            # reach goal state
            if self.isGoal(currentState, problemInstance):
                if currentState.timeStep() >= self.getReservation().getLastTimeStep():
                    self._goalState = currentState
                    return True
                else:
                    nextgoal = currentState.generateNextGoal(problemInstance)
                    if self.getReservation().isValid(nextgoal):
                        # print("put back {0}, \ntimestep: {1} ".format(nextgoal, nextgoal.timeStep()))
                        self.setHeuristic(nextgoal, 'trueDistance', self._heuristic)
                        self._setTables(nextgoal, problemInstance)
                        self._openList.put(nextgoal)
                    # else:
                    #     print("Conflict with reservation, do not put back.")
            # not reach goal state
            else:
                potentialStates = currentState.expand(problemInstance)
                for s in potentialStates:
                    self.setHeuristic(s, 'trueDistance', self._heuristic)
                    self._setTables(s, problemInstance)
                    if self.getReservation().isValid(s) and s.gValue() + s.hValue() < maxgValue:
                        # unlimited openlist pop and put into
                        if toPrint:
                            print(s)
                        # agents stays
                        if not self._closeList.contains(s):
                            self._openList.put(s)
                            self._closeList.add(s)
                            if toPrint:
                                print("add to openlist/closelist: {0}".format(s))

                        elif s.isStay(currentState):
                            self._openList.put(s)
                            if toPrint:
                                print("add to openlist: {0}".format(s))

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
        # self._openList = PriorityQueue()
        self._closeList.clear()
        self._goalState = None
        # init TDHeuristic
        self._heuristic = TDHeuristic(problemInstance)

    def setIgnore(self, tf):
        if tf:
            print("AStarSolver set violation free as priority.")
        else:
            print("AStarSolver set cost as priority.")
        self._ignoreCost = tf

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
        # if self.getUsedTable().isInitialized() is True:
        s.updateUsedElectrode(self.getUsedTable(), nsize)
        if self.getCAT().isEmpty() is False: # self.getCAT().isInitialized() is True and
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
