# from SingleAgent.Utilities.ProblemInstance import ProblemInstance
import abc
from Queue import PriorityQueue
from SingleAgent.Utilities.StateClosedList import StateClosedList
from SingleAgent.Utilities.ProblemInstance import ProblemInstance


class GeneticAStar(object):
    __metaclass__ = abc.ABCMeta

    def  __init__(self):
        """
        TODO:
        reservation table and conflict avoidance table, as member variable
        advanced heuristic cost, as member variable
        openList
        closeList
        goalState: searched goal state
        :param problemInstance:

        """
        self._openList = PriorityQueue()
        self._closeList = StateClosedList()
        self._goalState = None

    def solve(self, problemInstance):
        """
        TODO: Solve problem instance
        :param problemInstance:
        :return:
        """
        """
        TODO: add reservation table for OD agents
        :param problemInstance:
        :return:
        """
        assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
        self.__init(problemInstance)
        root = self.createRoot(problemInstance)
        root.setHeuristic(problemInstance)
        print("Root state: {0}".format(root))
        self._openList.put(root)

        while not self._openList.empty():
            if self._openList.qsize() % 100 == 0:
                print("OpenList size: {0}".format(self._openList.qsize()))
            currentState = self._openList.get()
            # print("Pop state: {0}".format(currentState))
            self._closeList.add(currentState)
            # print(type(currentState))
            if self.isGoal(currentState, problemInstance):
                self._goalState = currentState
                return True

            potentialStates = currentState.expand(problemInstance)
            for s in potentialStates:
                try:
                    s.setHeuristic(problemInstance)
                    if not self._closeList.contains(s):
                        self._openList.put(s)
                        # print("Add state : {0}".format(s))
                except:
                    print ("cannot set hValue for state : {0}".format(s))

    def __init(self, problemInstance):
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
        """
        TODO: return list of states as paths
        :return:
        """

    def printPath(self):
        """
        print positions and time steps of a path
        :return:
        """

    def createRoot(self, problemInstance):
        """

        :param problemInstance:
        :return:
        """



