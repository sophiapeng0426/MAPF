from ODState import ODState
from SingleAgentState import SingleAgentState


class ODState_2(ODState):
    def __init__(self, backPointer, singleAgents, problemInstance, moveNext, preState):
        super(ODState_2, self).__init__(backPointer, singleAgents, problemInstance, moveNext, preState)

    @classmethod
    def fromProblemIns(cls, problemInstance):
        numAgents = len(problemInstance.getAgents())
        singleAgents = []
        for i in range(numAgents):
            agentId = problemInstance.getAgents()[i].getId()
            singleAgents.append(SingleAgentState.fromProblemIns(agentId, problemInstance))
        return cls(None, singleAgents, problemInstance, 0, None)

    def __lt__(self, other):
        """Compare two state for priority queue
        Breaking tie considers smaller hValue
        :param other: same candidate state
        :return:
        """
        """
        TODO: break tie considering _usedElectrode (visitTable)
            ; and _conflictViolations (CAT)
        """
        assert other is not None, "State can not compare with None type"
        if other.hValue() is None or self.hValue() is None:
            print("set Heuristic Value first")
            return None
        dif = self.conflictViolations() - other.conflictViolations()
        dif2 = self.gValue() - other.gValue() + self.hValue() - other.hValue()
        dif3 = self.usedElectrode() - other.usedElectrode()
        # breaking tie considering hValue
        if dif == 0:
            if dif2 == 0:
                return dif3 < 0
            else:
                return dif2 < 0
            # return self.hValue() - other.hValue() < 0
        else:
            return dif < 0
        # return dif < 0

