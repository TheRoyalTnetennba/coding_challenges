"""
 Insert Node at a specific position in a linked list
 head input could be None as well for empty list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None):
	   self.data = data
	   self.next = next_node

 return back the head of the linked list in the below method.
"""
#This is a "method-only" submission.
#You only need to complete this method.

def InsertNth(head, data, position):
	linked_list = [head if head else Node(data)]
	while linked_list[len(linked_list) - 1].next:
		linked_list.append(linked_list[len(linked_list) - 1].next)
	new_linked = []
	for i in range(len(linked_list)):
		if i == position: new_linked.append(Node(data))
		else: new_linked.append(linked_list[len(new_linked) - len(linked_list) + i])
	for i in range(len(new_linked) - 1):
		new_linked[i].next = new_linked[i+1]
	return new_linked[0]
