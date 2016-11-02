# from SingleAgent.Utilities.ProblemInstance import ProblemInstance
# import abc
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
        """TODO: reservation table and conflict avoidance table,
        advanced heuristic cost"""
        super(GeneticAStar, self).__init__()
        self._openList = PriorityQueue()
        self._closeList = StateClosedList()
        self._goalState = None

    def solve(self, problemInstance):
        """ solver for singleAgent and multiAgent
        :param problemInstance:
        :return:
        """
        """ TODO: more efficient data structure for openList"""
        assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
        self.init(problemInstance)
        root = self.createRoot(problemInstance)
        root.setHeuristic(problemInstance)
        self._openList.put(root)
        self._closeList.add(root)

        while not self._openList.empty():
            if self._openList.qsize() % 1000 == 0:
                print("OpenList size: {0}".format(self._openList.qsize()))
            currentState = self._openList.get()

            if self.isGoal(currentState, problemInstance):
                self._goalState = currentState
                return True

            potentialStates = currentState.expand(problemInstance)
            for s in potentialStates:
                if not self._closeList.contains(s):
                    try:
                        s.setHeuristic(problemInstance)
                    except:
                        print ("cannot set hValue for state : {0}".format(s))
                    self._openList.put(s)
                    self._closeList.add(s)
            # self._closeList.add(currentState)
        return False

    def init(self, problemInstance):
        """
        TODO: implement initialization for reservation and heuristics
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




