from __future__ import print_function
from sys import getsizeof, stderr
from itertools import chain
from collections import deque
# try:
#     from reprlib import repr
# except ImportError:
#     pass


class Util2(object):
    def total_size(o, handlers={}, verbose=False):
        """ Returns the approximate memory footprint an object and all of its contents.

        Automatically finds the contents of the following builtin containers and
        their subclasses:  tuple, list, deque, dict, set and frozenset.
        To search other containers, add handlers to iterate over their contents:

            handlers = {SomeContainerClass: iter,
                        OtherContainerClass: OtherContainerClass.get_elements}

        """
        dict_handler = lambda d: chain.from_iterable(d.items())
        all_handlers = {tuple: iter,
                        list: iter,
                        deque: iter,
                        dict: dict_handler,
                        set: iter,
                        frozenset: iter,
                        }
        all_handlers.update(handlers)  # user handlers take precedence
        seen = set()  # track which object id's have already been seen
        default_size = getsizeof(0)  # estimate sizeof object without __sizeof__

        def sizeof(o):
            if id(o) in seen:  # do not double count the same object
                return 0
            seen.add(id(o))
            s = getsizeof(o, default_size)

            if verbose:
                print(s, type(o), repr(o), file=stderr)

            for typ, handler in all_handlers.items():
                if isinstance(o, typ):
                    s += sum(map(sizeof, handler(o)))
                    break
            return s

        return sizeof(o)


    def oppositeDir(self, dir):
        if dir == 0:
            return 2
        elif dir == 2:
            return 0
        elif dir == 1:
            return 3
        elif dir == 3:
            return 1

    def moveDir(self, preNode, nextNode):
        """find moving direction of preNode -> nextNode"""
        pos1 = preNode.getPosition()
        pos2 = nextNode.getPosition()
        if pos1[0] == pos2[0] and pos1[1] == pos2[1]:
            return 0
        elif pos1[1] - pos2[1] == 1:
            return 1
        elif pos1[0] - pos2[0] == -1:
            return 2
        elif pos1[1] - pos2[1] == -1:
            return 3
        elif pos1[0] - pos2[0] == 1:
            return 4
        return None

    def withinDis(self, node1, node2):
        if isinstance(node1, tuple):
            return abs(node1[0] - node2[0]) < 2 and abs(node1[1] - node2[1]) < 2
        else:
            return abs(node1.getPosition()[0] - node2.getPosition()[0]) < 2 \
               and abs(node1.getPosition()[1] - node2.getPosition()[1]) < 2

    def posToIndex(self, pos, nsize):
        return pos[0] * nsize + pos[1]

    def indexToPos(self, index, nsize):
        x = index // nsize
        y = index % nsize
        return (x,y)

##### Example call #####

if __name__ == '__main__':
    d = dict(a=1, b=2, c=3, d=[4,5,6,7], e='a string of chars')
    print(total_size(d, verbose=True))