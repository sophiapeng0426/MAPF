from Queue import PriorityQueue
from SingleAgent.Solver.ConstraintSolver import ConstraintSolver
from SingleAgent.Utilities.StateClosedList import StateClosedList
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Solver.UsedTable import UsedTable


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

    def solve(self, problemInstance, pathList):
        """ solver for singleAgent and multiAgent
        :param problemInstance:
        :return:
        """
        """
        TODO: more efficient data structure for openList
        """
        assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
        self.init(problemInstance, pathList)

        root = self.createRoot(problemInstance)
        # self.setHeuristic(root, 'manhatten', problemInstance)
        # print(root)
        self.setHeuristic(root, 'trueDistance', self._heuristic)

        if pathList is not None:
            root.setUsedElectrode(self.getUsedTable())

        self._openList.put(root)
        self._closeList.add(root)

        kk = 0
        while not self._openList.empty():
            currentState = self._openList.get()

            if self._openList.qsize() % 5000 == 0:
                print("OpenList size: {0};  closedList size ~: {1}".format(self._openList.qsize(),
                                                                         self.closeList().size() - self._openList.qsize()))
            # self._closeList.add(currentState)

            if self.isGoal(currentState, problemInstance):
                self._goalState = currentState
                return True

            potentialStates = currentState.expand(problemInstance)
            for s in potentialStates:
                if not self._closeList.contains(s):
                    # self.setHeuristic(s, 'manhatten', problemInstance)
                    self.setHeuristic(s, 'trueDistance', self._heuristic)

                    if pathList is not None:
                        s.setUsedElectrode(self._usedTable)

                    self._openList.put(s)
                    self._closeList.add(s)
            kk += 1

        return False

    def init(self, problemInstance, pathList):
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

        # initialize electrode used table
        if pathList is not None:
            usedTable = UsedTable(problemInstance)
            usedTable.fillTable(pathList)
            self.setUsedTable(usedTable)

        # initialize heuristic
        self._heuristic = TDHeuristic(problemInstance)

    def getHeuristicTable(self):
        return self._heuristic

    def setHeuristic(self, s, mode, input):
        if mode == 'manhatten':
            s.setHeuristic(mode, input)
        elif mode == 'trueDistance':
            s.setHeuristic(mode, input)
        else:
            assert False, 'unknown heuristic'

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
