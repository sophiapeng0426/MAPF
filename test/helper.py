def listProduct(alist):
    """
    [[s1 s2 s3] [m1 m2]] every element is None-empty list
    catesian product of list elements
    :param alist: list of list of elements [[s1 s2 s3] [m1 m2]]
    :return: list of lists of elements
    """
    assert len(alist) >= 1, "Cannot product None (list)"

    if len(alist) == 1:
        res = []
        for element in alist[0]:
            res.append([element])
        return res
    res = []
    # last = alist.pop()
    for comb in listProduct(alist[0:-1]):
        for element in alist[-1]:
            res.append(comb + [element])
    return res

class Cheese(object):
    def __init__(self, num_holes=0, other_holes = 0):
        "defaults to a solid cheese"
        self.number_of_holes = num_holes
        self.other = other_holes

    @classmethod
    def random(cls):
        return cls()

    @classmethod
    def slightly_holey(cls):
        return cls()

    @classmethod
    def very_holey(cls):
        return cls()

def main():
    print("=== listProduct() ====")
    print(listProduct([[]]))
    print(listProduct([[1, 2, 3]]))
    print(listProduct([[1], [4]]))
    assert len(listProduct([[1], [4]])) == 1
    print(listProduct([[1, 2, 3], [4, None]]))

    l1 = [1, 2, 3]
    l1.append(None)
    l1.append([])
    print(l1)

    print("=== set test ===")
    m = set()
    m.add(1)
    m.add(2)
    m.add(None)
    print(m)
    m |= set([5])
    print(m)
    print(set([]) == set([None]))

    print("=== multiple constructor test===")
    goud = Cheese(100,1)
    sgoud2 = Cheese.slightly_holey()
    print(goud.number_of_holes, goud.other)
    print(sgoud2.number_of_holes, goud.other)

    print("=== list remove test === ")
    l1 = ['a', 'b', 'c']
    l1.remove('c')
    l1.remove('a')
    l1.remove('b')
    for item in l1:
        print(item)


if __name__ == "__main__":
    main()