# Definition for a  binary tree node
# class TreeNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class BSTIterator(object):
	def __init__(self, root):
		self.root = root
		self.nodes = []
		self.postOrder(root)
		
	def postOrder(self, root):
		if root and root.left: self.postOrder(root.left)
		if root: self.nodes.insert(0, root.val)
		if root and root.right: self.postOrder(root.right)

	def hasNext(self):
		return len(self.nodes) > 0
		

	def next(self):
		return self.nodes.pop()
		

# Your BSTIterator will be called like this:
# i, v = BSTIterator(root), []
# while i.hasNext(): v.append(i.next())