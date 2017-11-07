class Solution:
	def search(self, nums, target):
		"""
		:type nums: List[int]
		:type target: int
		:rtype: int
		"""
		if len(nums) == 0: return -1
		found_zero = False
		highest = nums[0]
		for i in range(len(nums)):
			if nums[i] == target: return i
			if nums[i] == 0: found_zero = i
			if nums[i] > highest: highest = nums[i]
			if found_zero and highest < target:
				return -1
		return -1