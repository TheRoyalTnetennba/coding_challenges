"""
 Delete Node at a given position in a linked list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the head of the linked list in the below method. 
"""

def Delete(head, position):
	if position == 0:
		return head.next
	previous = head
	current = head.next
	pos = 1
	while pos < position:
		previous = previous.next
		current = previous.next
		pos += 1
	previous.next = current.next
	return head
