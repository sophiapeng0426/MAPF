import abc

class ICLosedList(object):
    __metaclass__ = abc.ABCMeta

    @abc.abstractmethod
    def contains(self, state):
        """
        return if state is in the list
        :return:
        """

    def add(self, state):
        """
        add state to list
        :param state:
        :return:
        """

    def clear(self):
        """
        clear list
        :return:
        """
