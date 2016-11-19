from SingleAgent.States import ODState
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
                    thisState = thisPath[t]
                    if t > len(path) - 1:
                        compareState = path[-1]
                    else:
                        compareState = path[t]
                    if self.conflictState(thisState, compareState):
                        # return earliest conflict of thisPath and pathList
                        return Conflict(t, index, i)
        return None

    def conflictState(self, thisState, compareState):
        """ check if two states have time conflict
        :param thisState:
        :param compareState:
        :return: bool
        """
        assert isinstance(thisState, ODState.ODState)
        assert isinstance(compareState, ODState.ODState)

        thisSingleAgents = thisState.getSingleAgents()
        compareSingleAgents = compareState.getSingleAgents()
        thisPos = [state.getCoord().getNode() for state in thisSingleAgents]
        comparePos = [state.getCoord().getNode() for state in compareSingleAgents]

        if self._conflictStateHelper(thisSingleAgents, comparePos) or self._conflictStateHelper(compareSingleAgents, thisPos):
            return True
        else:
            return False

    def _conflictStateHelper(self, singleAgents, comparePos):
        for s in singleAgents:
            staticCons = s.getCoord().getNode().get_Eight()
            if s.isRoot():
                prohibit = set(staticCons)
            else:
                dynamicCons = s.predecessor().getCoord().getNode().get_Eight()
                prohibit = set(staticCons) | set(dynamicCons)
            prohibit.add(s)
            if not prohibit.isdisjoint(set(comparePos)):
                return True
        return False

    def mergePaths(self, pathList):
        """ generate paths for IDSolver
        :param pathList:
        :return: list of list of singleAgents
        """
        paths = filter(lambda x: x is not None, pathList)
        longestLength = self.getLongestPath(paths)
        mergedList = [[] for i in range(longestLength)]

        for t in range(longestLength):
            for path in paths:
                if t < len(path):
                    state = path[t]
                else:
                    state = path[-1]
                for singleAgent in state.getSingleAgents():
                    mergedList[t].append(singleAgent)
        return mergedList

    def getLongestPath(self, pathList):
        r = 0
        for path in pathList:
            if path is not None and len(path) > r:
                r = len(path)
        return r

    # def countPins(self, pathList):
    #     res = []
    #     paths = filter(lambda x: x is not None, pathList)
    #     for path in paths:
    #         res.append(path[-1].extraPins())
    #     return res




def main():
    pass


if __name__ == '__main__':
    main()