# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
	def deleteDuplicates(self, head):
		numbers = {}
		ans = []
		current = head
		while current:
			if current.val not in numbers:
				numbers[current.val] = True
				ans.append(current.val)
			current = current.next
		return ans