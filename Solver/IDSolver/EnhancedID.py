from SingleAgent.Utilities.Utils import Util
from IndependentDetection import IDSolver


class EnhandcedID(IDSolver):
    def __init__(self, solver):
        super(EnhandcedID, self).__init__(solver)

    def solve(self, problemInstance):
