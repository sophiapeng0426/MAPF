class Agent(object):
    def __init__(self, id, start, goal):
        """ start and goal are (x,y) in the graph"""
        self._id = id
        self._start = start
        self._goal = goal

    def getId(self):
        return self._id

    def getStart(self):
        return self._start

    def getGoal(self):
        return self._goal

    def __lt__(self, other):
        return self._id < other.getId()

def main():
    agent1 = Agent(0, (1, 1), (10, 10))
    agent2 = Agent(1, (1, 1), (10, 10))
    assert agent1 < agent2

if __name__ == "__main__":
    main()
