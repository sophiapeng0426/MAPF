from IndependentDetection import IDSolver


class EnhandcedID(IDSolver):
    def __init__(self, solver):
        super(EnhandcedID, self).__init__(solver)
        # TODO: move this to populate paths
        self._conflictInPast = [[False for i in range(len(self.paths()))] for j in range(len(self.paths()))]

    def resolveConflict(self, id1, id2):
        # already been solved
        if self._conflictInPast[id1][id2] is True:
            self.updateConflictPast(id1)
            return super(self, EnhandcedID).resolveConflict(id1, id2)
        else:
            alternative = False
            # rerout id1
            if self._findAlternativePath(id1, id2):
                alternative = True
                self._conflictInPast[id1][id2] = True
                self._conflictInPast[id2][id1] = True
            #     TODO: clear reservation table, conflict avoidance table
            # rerout id2
            if not alternative:
                if self._findAlternativePath(id2, id1):
                    alternative = True
                    self._conflictInPast[id1][id2] = True
                    self._conflictInPast[id2][id1] = True
            #  TODO: clear reservation table, conflict avoidance table
            # combine id1 and id2 and solve the new problem
            if not alternative:
                self.updateConflictPast(id1)
                return super(self, EnhandcedID).resolveConflict(id1, id2)


    def _findAlternativePath(self, id1, id2):
        """
        find alternative path for problem[id1], while reserving id2
        :param id1:
        :param id2:
        :return:
        """
        path1 = self.paths()[id1]
        costLimit = path1[-1].gValue() + path1[-1].hValue()

        # init reservation table
        newsolver = self.solver()
        newsolver.getReservation().reservePath(self.paths()[id2])

        # init cat and usedtable
        for index in range(len(self.paths())):
            if index != id1 and self.paths()[index] is not None:
                # TODO: initialize used table
                # newsolver.getUsedTable().addPath(self.paths()[index])
                if index != id2:
                    newsolver.getCAT().addPath(self.paths()[index])
        # TODO: no need for pathList to initialize used table
        otherPathList = self._pathList[:]
        otherPathList[id1] = None
        otherPathList[id2] = None

        # solve new constrained problem and find cost
        if newsolver.solve(self.problems()[id1], otherPathList):
            if newsolver.getPath()[-1].gValue() + newsolver.getPath()[-1].hValue() == costLimit:
                self.paths()[id1] = newsolver.getPath()
                return True
        return False

    def updateConflictPast(self, id):
        # set all index from id and to id to false
        self._conflictInPast[id] = [False for i in range(len(self.paths()))]
        for i in range(len(self._conflictInPast)):
            self._conflictInPast[i][id] = False





