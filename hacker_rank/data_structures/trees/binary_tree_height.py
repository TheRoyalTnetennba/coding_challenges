# Enter your code here. Read input from STDIN. Print output to STDOUT
'''
class Node:
	  def __init__(self,info): 
		  self.info = info  
		  self.left = None  
		  self.right = None 
		   

	   // this is a node of the tree , which contains info as data, left , right
'''
def height(root, length = 0):
	left = height(root.left, length + 1) if root.left else length
	right = height(root.right, length + 1) if root.right else length
	return left if left > right else right