def check(root, min_, max_):
    return (root is None or
            (min_ < root.data < max_ and
             check(root.left, min_, root.data) and
             check(root.right, root.data, max_)))


def checkBST(root):
    return check(root, -float('inf'), float('inf'))
