from Graph import Graph
from Agent import Agent
from ProblemMap import ProblemMap
# from SingleAgent.Constants import *


class ProblemInstance(object):
    def __init__(self, graph, agents):
        """
        :param graph: Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
        :param agents: list of Agents, example [Agent(0, (1,1),(10,10))]
        """
        self.__graph = graph
        self.__agents = agents
        self.__goals = []
        self.__updateGoals()
        if self.__duplicateGoalsOrStarts():
            print("Agent initial or goal positions are not valid.")

    def __updateGoals(self):
        """
        fill-in goal lists
        :return: list of (x,y) for agent goals
        """
        for agent in self.__agents:
            self.__goals.append(agent.getGoal())

    def __duplicateGoalsOrStarts(self):
        """
        TODO: check if agent positions are accessible,
        check agents do not collide if more than one agents
        ! Merge case otherwise
        :return: True or False
        """
        return False

    def join(self, otherInstance):
        """
        TODO: join one problem ins with another, add agents and check no collision
        :param otherInstance:
        :return: new problem instance
        """

    def addAgent(self, agent):
        """
        TODO: add more agent
        :param agent:
        :return:
        """

    def removeAgent(self, agentId):
        """
        TODO: remove agent with ID = agentId
        :param agentId:
        :return:
        """

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
        mapContent = self.getMap().getContent()
        for agent in self.__agents:
            mapContent[agent.getStart()[1]][agent.getStart()[0]] = str(agent.getId())
            mapContent[agent.getGoal()[1]][agent.getGoal()[0]] = str(agent.getId())
        for i in mapContent:
            print(' '.join(i))


def main():
    graph1 = Graph(ProblemMap(16, 16, {(3, 2): 2, (8, 8): 4, (10, 3): 2, (3, 10): 1}))
    agent1 = [Agent(0,(9,4),(12,12)), Agent(1, (13,13), (9, 2))]
    problem1 = ProblemInstance(graph1, agent1)

    node_agent1Start = problem1.getGraph().getNode()[15][15]
    print(node_agent1Start.get_Eight())


    print(problem1.getGoals())

    problem1.plotProblem()



if __name__ == '__main__':
    main()