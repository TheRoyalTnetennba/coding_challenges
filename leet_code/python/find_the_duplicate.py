class Solution:
	def findDuplicate(self, nums):
		if len(nums) == 0: return -1
		i = nums[0]
		j = nums[nums[0]]
		while i != j:
			i = nums[i]
			j = nums[nums[j]]
		j = 0
		while i != j:
			i = nums[i]
			j = nums[j]
		return i
