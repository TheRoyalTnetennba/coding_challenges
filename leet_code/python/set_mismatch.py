class Solution:
	def findErrorNums(self, nums):
		count = {}
		for i in nums:
			if i in count: count[i] += 1
			else: count[i] = 1
		missing = None
		doubled = None
		for i in range(1, len(nums) + 1):
			if i not in count: missing = i
			elif count[i] > 1: doubled = i
			if missing and doubled: return [doubled, missing]
		return [doubled, missing]