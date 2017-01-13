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

    def solve(self, problemInstance, root, cost, total):
        """ updated solve
        :param problemInstance:
        :param root:
        :param cost:
        :param total:
        :return:
        """
        import os
        assert isinstance(problemInstance, ProblemInstance), "Initialize solve function require problemInstance"
        self.init(problemInstance)

        # ====== for debug ===========
        alist = [str(x.getId()) for x in problemInstance.getAgents()]
        name = '_'.join(alist)
        dirname = root + '/log/'
        # dirname = '/Users/chengpeng/Documents/MTSL/ElectrodeDesgin/Result/test_16_16_1/log3.5t/'
        if not os.path.exists(os.path.dirname(dirname)):
            os.makedirs(os.path.dirname(dirname))
        f = open('{0}{1}.txt'.format(dirname, name), 'a')
        f.write(dirname)
        # ===== end ======

        maxgValue = problemInstance.getGraph().getSize() * cost
        if total:
            maxgValue = maxgValue * self._heuristic.nAgent()
        print("max cost: {0}".format(maxgValue))
        f.write("max cost: {0}\n".format(maxgValue))

        root = self.createRoot(problemInstance)
        self.setHeuristic(root, 'trueDistance', self._heuristic)
        self._setTables(root, problemInstance)
        self._openList.put(root)

        while not self._openList.empty() and self._closeList.size() < 1000000:
            currentState = self._openList.get()

            if self._closeList.size() % 10000 == 0:
                toPrint = True
            else:
                toPrint = False

            if toPrint:
                print("\nOpenList size: {0};  closedList size ~: {1}".format(self._openList.qsize(),
                                                                           self.closeList().size()))

                print("timeStep: {0}, pop: {1}".format(currentState.timeStep(), currentState))
            f.write("\nOpenList size: {0};  closedList size ~: {1}".format(self._openList.qsize(),
                                                              self.closeList().size()))
            f.write("\ntimeStep: {0}, pop: {1}\n".format(currentState.timeStep(), currentState))

            self._closeList.add(currentState)

            # reach goal state
            if self.isGoal(currentState, problemInstance):
                if currentState.timeStep() >= self.getReservation().getLastTimeStep():
                    self._goalState = currentState
                    return True
                else:
                    nextgoal = currentState.generateNextGoal(problemInstance)
                    if self.getReservation().isValid(nextgoal):
                        print("put back {0}, timestep: {1} ".format(nextgoal, nextgoal.timeStep()))
                        f.write("put back {0}, timestep: {1}\n".format(nextgoal, nextgoal.timeStep()))

                        self.setHeuristic(nextgoal, 'trueDistance', self._heuristic)
                        self._setTables(nextgoal, problemInstance)
                        self._openList.put(nextgoal)
                    else:
                        # delete goal in closelist
                        self._closeList.delete(currentState)
                        # ====== experiment with deleting all ========
                        # preS = currentState.getPreState()
                        # while preS is not None:
                        #     if preS in self._closeList.getClosedList():
                        #         self._closeList.delete(preS)
                        #     preS = preS.getPreState()
                        # ======== end ==========
                        print("Conflict with reservation, do not put back.")
                        f.write("Conflict with reservation, do not put back.\n")

            # not reach goal state
            else:
                potentialStates = currentState.expand(problemInstance)
                for s in potentialStates:
                    self.setHeuristic(s, 'trueDistance', self._heuristic)
                    self._setTables(s, problemInstance)
                    # ======== each agent maxCost ======
                    lessValue = True
                    if not total:
                        for singleS in s.getSingleAgents():
                            if singleS.fValue() > maxgValue:
                                lessValue = False
                    else:
                        lessValue = s.gValue() + s.hValue() < maxgValue
                    # ========= end ============
                    if self.getReservation().isValid(s):
                        if lessValue:
                            if toPrint:
                                print(s)
                            f.write(str(s) + '\n')
                            # agents stays
                            if not self._closeList.contains(s):
                                self._openList.put(s)
                                self._closeList.add(s)
                                if toPrint:
                                    print("add to openlist/closelist")
                                f.write("add to openlist/closelist\n")
                            elif s.isStay(currentState):
                                self._openList.put(s)
                                if toPrint:
                                    print("add to openlist")
                                f.write("add to openlist\n")
                    else:
                        if toPrint:
                            print(s)
                        f.write(str(s) + "obey violations\n")
        f.close()
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
