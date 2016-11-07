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
        1, reservation table
        2, advanced heuristic cost"""
        super(GeneticAStar, self).__init__()
        self._openList = PriorityQueue()
        self._closeList = StateClosedList()
        self._goalState = None

    def solve(self, problemInstance, pathList):
        """ solver for singleAgent and multiAgent
        :param problemInstance:
        :return:
        """
        """
        TODO:
        more efficient data structure for openList
        """
        assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
        self.init(problemInstance)

        root = self.createRoot(problemInstance)
        root.setHeuristic(problemInstance)

        if pathList is not None:
            root.initVisitTable(pathList)
            root.updateVisitTable(None)
            # print(root.visitTable())

        self._openList.put(root)
        self._closeList.add(root)

        kk = 0
        while not self._openList.empty():
            # if self._openList.qsize() % 1000 == 0:
            #     print("OpenList size: {0}".format(self._openList.qsize()))

            currentState = self._openList.get()
            if kk % 100 == 0:
                print("current state: {0}".format(currentState))
            self._closeList.add(currentState)

            if self.isGoal(currentState, problemInstance):
                self._goalState = currentState
                return True

            potentialStates = currentState.expand(problemInstance)
            for s in potentialStates:
                if not self._closeList.contains(s):

                    s.setHeuristic(problemInstance)
                    if pathList is not None:
                        s.updateVisitTable(currentState.visitTable())
                    if kk % 100 == 0:
                        print("children: {0}".format(s))
                        print(s.visitTable())

                    self._openList.put(s)
                    self._closeList.add(s)
            kk += 1

        return False

    def init(self, problemInstance):
        """
        :param problemInstance:
        :return:
        """
        while not self._openList.empty():
            self._openList.get()
        self._closeList.clear()
        self._goalState = None

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

    def createRoot(self, problemInstance):
        """create root node for AStar solver"""
        pass

    def __str__(self):
        return "AStar"
