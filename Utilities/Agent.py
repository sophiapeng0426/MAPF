class Agent(object):
    def __init__(self, id, start, goal):
        #  start and goal are (x,y) in the graph
        self._id = id
        self._start = start
        self._goal = goal

    def getId(self):
        return self._id

    def getStart(self):
        return self._start

    def getGoal(self):
        return self._goal


def main():
    agent1 = Agent(0, (1, 1), (10, 10))
    print(agent1.__dict__)
    print(type(agent1))
    print(agent1.__class__.__name__)

if __name__ == "__main__":
    main()
