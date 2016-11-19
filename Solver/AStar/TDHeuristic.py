class TDHeuristic(object):
    def __init__(self, problemInstance):
        nsize = problemInstance.getGraph().getSize()
        nAgent = len(problemInstance.getAgents())
        # lookupTable[ID][index] is the distance
        self._lookupTable = [[0 for i in range(nsize * nsize)] for j in range(nAgent)]
