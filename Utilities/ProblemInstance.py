import copy
from Graph import Graph
from Agent import Agent
from ProblemMap import ProblemMap


class ProblemInstance(object):
    def __init__(self, graph, agents):
        """
        _goals: {agentId: (x, y)}
        :param graph: Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
        :param agents: list of Agents, example [Agent(0, (1,1),(10,10))]
        """
        self.__graph = graph
        self.__agents = agents
        self.__goals = {}
        self.__initiateGoals()
        assert self.__duplicateGoalsOrStarts() == False, "Agent initial or goal positions duplicates."

    def __initiateGoals(self):
        self.__goals.clear()
        for agent in self.__agents:
            self.__goals[agent.getId()] = agent.getGoal()

    def __duplicateGoalsOrStarts(self):
        """
        ! Merge case otherwise
        :return: True or False
        """
        """TODO: check if agent positions are not occupied;
        check agents do not collide if more than one agents"""
        return False

    # def getSingleInstance(self, agentID):
    #     """ get new problem Instance consists of single Agent
    #     :param agentID: int
    #     :return: problemInstance (1 agent)
    #     """
    #     for agent in self.__agents:
    #         if agent.getId() == agentID:
    #             return ProblemInstance(self.__graph, agent)

    def join(self, otherInstance):
        """ merge self with otherInstance
        :param otherInstance:
        :return: new problem instance
        """
        for agent in otherInstance.getAgents():
            self.__agents.append(agent)
            self.__goals[agent.getId()] = agent.getGoal()
        assert self.__duplicateGoalsOrStarts() == False, "Agent initial or goal positions duplicates."

    def addAgent(self, agent):
        if isinstance(agent, list):
            self.__agents += agent
            for s in agent:
                self.__goals[s.getId()] = s.getGoal()
        elif isinstance(agent, Agent):
            self.__agents += [agent]
            self.__goals[agent.getId()] = agent.getGoal()
        assert self.__duplicateGoalsOrStarts() == False, "Agent initial or goal positions duplicates."

    def removeAgent(self, agentId):
        """TODO: """
        if isinstance(agentId, int):
            pass

    def getAgents(self):
        return self.__agents

    def getGraph(self):
        return self.__graph

    def getMap(self):
        return self.getGraph().getMap()

    def getGoals(self):
        return self.__goals

    def plotProblem(self):
        """
        graph + agents for visualization
        :return:
        """
        mapContent = copy.deepcopy(self.getMap().getContent())
        for agent in self.__agents:
            mapContent[agent.getStart()[1]][agent.getStart()[0]] = str(agent.getId())
            mapContent[agent.getGoal()[1]][agent.getGoal()[0]] = str(agent.getId())
        for i in mapContent:
            print(' '.join(i))


def main():
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    agent1 = [Agent(2, (9, 4), (12, 12)), Agent(1, (13, 13), (9, 2))]
    problem1 = ProblemInstance(graph1, agent1)

    node_agent1Start = problem1.getGraph().getNode()[15][15]
    print(node_agent1Start.get_Eight())

    print(problem1.getGoals())

    problem1.plotProblem()


if __name__ == '__main__':
    main()