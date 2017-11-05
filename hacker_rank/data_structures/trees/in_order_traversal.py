"""
Node is defined as
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)
"""
def inOrder(root):
	for i in sorted(traverse(root)):
		print(i),


def traverse(root, arr=[]):
	if root.left: traverse(root.left, arr)
	if root.right: traverse(root.right, arr)
	arr.append(root.data)
	return arr