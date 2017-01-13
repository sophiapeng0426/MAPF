from SingleAgent.Utilities.Conflict import Conflict


class Util(object):
    def conflict(self, index, startIndex, pathList):
        """ return conflict if exists
        :param index: index of path to be checked
        :param startIndex:
        :param pathList: list of paths
        :return:
        """
        thisPath = pathList[index]
        if thisPath is None:
            return None
        for i in range(startIndex, len(pathList)):
            if i != index and pathList[i] is not None:
                path = pathList[i]
                # iterate over each time step
                for t in range(len(thisPath)):
                    isGoalState = False
                    thisState = thisPath[t]
                    if t > len(path) - 1:
                        compareState = path[-1]
                        isGoalState = True
                    else:
                        compareState = path[t]

                    conflict = Conflict(t, index, i, None, None)
                    if self.conflictState2(thisState, compareState, isGoalState, conflict):
                        # return earliest conflict of thisPath and pathList
                        return conflict
        return None

    def conflictState2(self, thisState, compareState, isGoal, conflict):
        """
        return first conflict found include agentId if conflict exists, more efficient should include
        all conflicts between these two OD states
        :param thisState:
        :param compareState:
        :param isGoal: if compare state is goal state
        :param conflict: changed conflict
        :return:
        """
        for thisS in thisState.getSingleAgents():
            thisP = thisS.getCoord().getNode().getPosition()
            for compareS in compareState.getSingleAgents():
                compareP = set([])
                # current position and neighbor
                compareP.add(compareS.getCoord().getNode().getPosition())
                for node in compareS.getCoord().getNode().get_neighbor():
                    if node is not None:
                        compareP.add(node.getPosition())
                # previous position and neighbor
                if not isGoal and compareS.predecessor() is not None:
                    compareP.add(compareS.predecessor().getCoord().getNode().getPosition())
                    for node in compareS.predecessor().getCoord().getNode().get_neighbor():
                        if node is not None:
                            compareP.add(node.getPosition())
                if thisP in compareP:
                    conflict.setAgent(thisS.getAgentId(), compareS.getAgentId())
                    return True

        for thisS in compareState.getSingleAgents():
            thisP = thisS.getCoord().getNode().getPosition()
            for compareS in thisState.getSingleAgents():
                compareP = set([])
                # current position and neighbor
                compareP.add(compareS.getCoord().getNode().getPosition())
                for node in compareS.getCoord().getNode().get_neighbor():
                    if node is not None:
                        compareP.add(node.getPosition())
                # previous position and neighbor
                if compareS.predecessor() is not None:
                    compareP.add(compareS.predecessor().getCoord().getNode().getPosition())
                    for node in compareS.predecessor().getCoord().getNode().get_neighbor():
                        if node is not None:
                            compareP.add(node.getPosition())
                if thisP in compareP:
                    conflict.setAgent(compareS.getAgentId(), thisS.getAgentId())
                    return True
        return False

    def conflictState(self, thisState, compareState, isGoal):
        """ check if two states have time conflict
        :param thisState:
        :param compareState:
        :return: bool
        """
        from SingleAgent.States import ODState
        assert isinstance(thisState, ODState.ODState)
        assert isinstance(compareState, ODState.ODState)

        thisSingleAgents = thisState.getSingleAgents()
        compareSingleAgents = compareState.getSingleAgents()
        thisPos = [state.getCoord().getNode() for state in thisSingleAgents]
        comparePos = [state.getCoord().getNode() for state in compareSingleAgents]

        if self._conflictStateHelper(thisSingleAgents, comparePos, isGoal=False) or \
                self._conflictStateHelper(compareSingleAgents, thisPos, isGoal):
            return True
        else:
            return False

    def _conflictStateHelper(self, singleAgents, comparePos, isGoal):
        for s in singleAgents:
            staticCons = s.getCoord().getNode().get_neighbor()
            if s.isRoot() or isGoal is True:
                prohibit = set(staticCons)
            else:
                dynamicCons = s.predecessor().getCoord().getNode().get_neighbor()
                prohibit = set(staticCons) | set(dynamicCons)
            prohibit.add(s)
            if not prohibit.isdisjoint(set(comparePos)):
                # print(singleAgents[0])
                # print(singleAgents[0].getCoord())
                return True
        return False

    def mergePaths(self, pathList, problemInstance):
        """ generate paths for IDSolver
        :param pathList:
        :return: list of list of singleAgents
        """
        paths = filter(lambda x: x is not None, pathList)
        longestLength = self.getLongestPath(paths)
        mergedList = [[] for i in range(longestLength)]
        usedElectrode = set([])
        startOrGoal = problemInstance.startandGoalPosition()
        for t in range(longestLength):
            for path in paths:
                if t < len(path):
                    state = path[t]
                else:
                    state = path[-1]
                for singleAgent in state.getSingleAgents():
                    mergedList[t].append(singleAgent)
                    if singleAgent.getCoord().getNode().getPosition() not in startOrGoal:
                        usedElectrode.add(singleAgent.getCoord().getNode().getPosition())
        totalCost = 0
        for path in pathList:
            if path is not None:
                state = path[-1]
                totalCost += state.gValue()
        return totalCost, len(usedElectrode), mergedList

    def getLongestPath(self, pathList):
        r = 0
        for path in pathList:
            if path is not None and len(path) > r:
                r = len(path)
        return r

    def pathLength(self, path):
        reversed = path[::-1]
        i = 0
        while i < len(reversed) - 1:
            if reversed[i] == reversed[i+1]:
                i += 1
            else:
                break
        return len(path)-i-1




def main():
    pass


if __name__ == '__main__':
    main()