from State import State
from SingleAgent.Constants import *
from SingleAgent.Utilities.Coordinate import Coordinate
from SingleAgent.Solver.AStar.TDHeuristic import TDHeuristic
from SingleAgent.Utilities.ProblemInstance import ProblemInstance
from SingleAgent.Utilities.Node import Node


class SingleAgentState(State):
    def __init__(self, agentId, currentNode, backPointer, problemInstance):
        """
        :param agentId:
        :param currentNode: Agent position
        :param backPointer: Agent predecessor
        :param problemInstance:
        """
        assert isinstance(backPointer, State) or backPointer is None, "para 2 class is not State"
        assert isinstance(problemInstance, ProblemInstance), "para 3 class is not ProblemInstance"
        assert isinstance(currentNode, Node), "para 1 class is not Node"

        super(SingleAgentState, self).__init__(backPointer)
        self._agentId = agentId
        self._coord = None
        self._initializeCoord(currentNode)
        self.calculateCost(problemInstance)  # update gValue

    @classmethod
    def fromProblemIns(cls, agentId, problemInstance):
        """ construct single state based on agentId
        :param problemInstance:
        """
        targetAgent = None
        if len(problemInstance.getAgents()) == 1:
            targetAgent = problemInstance.getAgents()[0]
            agentId = targetAgent.getId()
        else:
            for agent in problemInstance.getAgents():
                if agent.getId() == agentId:
                    targetAgent = agent
                    continue
        startPosition = targetAgent.getStart()
        startNode = problemInstance.getGraph().getNode()[startPosition[0]][startPosition[1]]
        return cls(agentId, startNode, None, problemInstance)

    def _initializeCoord(self, node):
        if self.predecessor() is not None:
            self._coord = Coordinate(self.predecessor().getCoord().getTimeStep() + 1, node)
        else:
            self._coord = Coordinate(0, node)

    def getCoord(self):
        return self._coord

    def getAgentId(self):
        return self._agentId

    def goalTest(self, problemInstance):
        # problemInstance can be multiple/single
        return self._coord.getNode().getPosition() == problemInstance.getGoals()[self._agentId]

    def calculateCost(self, problemInstance):
        if self.predecessor() is None:
            self._gValue = 0
            return
        if self == self.predecessor():
            if self.goalTest(problemInstance):
                self._gValue = self.predecessor().gValue()
            else:
                self._gValue = self.predecessor().gValue() + costs.STAY   # change stay cost here constant 1
        else:
            self._gValue = self.predecessor().gValue() + 1    # cost is constant 1

    def setHeuristic(self, mode, input):
        """
        :param mode: manhatten or trueDistance
        :param problemInstanceOrHeuristic:
        :return:
        """
        if mode == "manhatten":
            assert isinstance(input, ProblemInstance), "Manhatten require problemInstance"
            problemInstance = input
            goalPos = problemInstance.getGoals()[self._agentId]
            self._hValue = self._mDistance(self._coord.getNode().getPosition(), goalPos)
        elif mode == "trueDistance":
            # assert isinstance(input, TDHeuristic), "trueDis require TDHeuristic, {0}, {1}".format(type(input), input)
            heuristic = input
            self._hValue = heuristic.trueDistance(self.getAgentId(), self.getCoord().getNode().getPosition())
            # print("set true distance: {0}".format(self._hValue))

        elif mode == "constant":
            assert isinstance(input, int)
            self._hValue = input
        else:
            assert False, "unknown heuristic"
    # def updateVisitTable(self, table):
    #     """ update self
    #     :param visitTable:
    #     :return:
    #     # """
    #     if table is not None:
    #         self._visitTable = table.copy()
    #     self.addSingleAgent(self._visitTable)
    #     # update extraPins
    #     self._extraPins = self._visitTable.getExtraPins()

    # def addSingleAgent(self, table):
    #     """add single agent (self) to visit table"""
    #     # add current position to table
    #     table.addNode(self.getCoord().getNode(), self.getCoord().getTimeStep() % 3)
    #
    #     # deal with previous node's surrounding
    #     if self.isRoot():
    #         return
    #     nextState = self
    #     thisState = self.predecessor()
    #     preState = self.predecessor().predecessor()
    #     neighbors = self.predecessor().getCoord().getNode().get_Four()[:]
    #     nextDir = Util2().moveDir(thisState.getCoord().getNode(), nextState.getCoord().getNode())
    #     if preState is None:
    #     #  predecessor is root node
    #         if nextDir != 0:
    #             nextDir -= 1
    #             neighbors[nextDir] = None
    #     else:
    #         preDir = Util2().moveDir(thisState.getCoord().getNode(), preState.getCoord().getNode())
    #         if nextDir != 0 and preDir != 0:
    #             nextDir -= 1
    #             preDir -= 1
    #             neighbors[nextDir] = None
    #             neighbors[preDir] = None
    #
    #     for node in neighbors:
    #         if node is not None:
    #             table.addNode(node, 4)
    def expand(self, problemInstance):
        """
        TODO: a list of singleAgentStates corresponding to its neighbors(valid neighbors)
        :param problemInstance:
        :return:
        """
        stateList = []
        stateList.append(self.waitState(problemInstance))

        for posNode in self._coord.getNode().get_Four():
            if posNode is not None:
                assert isinstance(posNode, Node), "Expanding: neighbor is not Node type"
                newState = SingleAgentState(self._agentId, posNode, self, problemInstance)
                stateList.append(newState)
        return stateList

    def _mDistance(self, a, b):
        return abs(a[0] - b[0]) + abs(a[1] - b[1])

    def waitState(self, problemInstance):
        """
        add wait state to state
        :param problemInstance:
        :return: singleAgentState corresponding to wait
        """
        return SingleAgentState(self._agentId, self._coord.getNode(), self, problemInstance)

    def __eq__(self, other):
        """
        AgentId, Coordinate.Node (position and type)
        :param other:
        :return:
        """
        if other is None:
            if self is not None:
                return False
        if type(self) != type(other):
            return False
        if self.getAgentId() != other.getAgentId():
            return False
        if other.getCoord() is None:
            if self.getCoord() is not None:
                return False
            else:
                return True
        if other.getCoord().getNode() != self.getCoord().getNode():
            return False
        return True

    def __hash__(self):
        prime = 31
        res = 1
        if self._coord is None:
            return 0
        else:
            res = prime * res + hash(self._coord.getNode()) * prime + hash(self._agentId)
            return res

    def __str__(self):
        return "{0}: ".format(self._agentId) + "{0}".format(self._coord.getNode().getPosition())
               # + "{0}".format(self.gValue())
        # return "ID{0}: ".format(self._agentId) + "pins: {0}, ".format(self._extraPins) \
        #        + "{0}".format(self._coord.getNode().getPosition())


def main():
    import sys
    from SingleAgent.Utilities.Agent import Agent
    from SingleAgent.Utilities.Graph import Graph
    from SingleAgent.Utilities.ProblemMap import ProblemMap

    graph1 = Graph(ProblemMap(16, {(3, 2): (2, 2), (8, 8): (4, 4), (10, 3): (2, 2), (3, 10): (1, 1)}))
    agent1 = [Agent(0, (9, 4), (12, 12)), Agent(1, (13, 13), (9, 2))]
    problem1 = ProblemInstance(graph1, agent1)
    problem1.plotProblem()

    print("=== test constructor ===")
    s1 = SingleAgentState(0, Node((9, 4)), None, problem1)
    s1_pi = SingleAgentState.fromProblemIns(0, problem1)

    print("Memory: {0}".format(sys.getsizeof(s1_pi)))
    print("Memory: {0}".format(sys.getsizeof(s1_pi.predecessor()) + sys.getsizeof(s1_pi.getCoord())))

    print("==== test coordinate, cost and heuristic ====")
    print(s1_pi.getCoord())
    assert s1_pi.isRoot() == True, "Root test fail"
    assert s1_pi.gValue() == 0, "calculateCost is wrong"
    s1_pi.setHeuristic('manhatten', problem1)
    assert s1_pi.hValue() == 11, "heuristic is wrong"

    print("====  test expand function ====")
    expandStates = s1_pi.expand(problem1)
    # for s in expandStates:
    #     print(s)

    print("=== test lt function ===")
    expand1 = expandStates[1] # 0 is stay
    expand1.setHeuristic('manhatten', problem1)
    assert s1_pi < expand1, "lt test fail"

    print("==== test eq function =====")
    s2 = SingleAgentState.fromProblemIns(1, problem1)
    assert s1 == s1_pi, "constructor eq test fail"
    assert s1_pi != s2, "eq test1 fail"

    # change problemInstance => ==
    s3 = SingleAgentState.fromProblemIns(0, ProblemInstance(graph1, [Agent(0, (9, 4), (11, 11))]))
    assert s1_pi == s3, "eq test2 fail"

    # change backpointer => ==
    s4 = SingleAgentState(0, Node((9, 4)), s1_pi, problem1)
    assert s1_pi == s4, "eq test3 fail"

if __name__ == '__main__':
    main()





