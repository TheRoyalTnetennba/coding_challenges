class Solution:
	def largestNumber(self, nums):
		"""
		:type nums: List[int]
		:rtype: str
		"""
		altered = True
		while altered:
			altered = False
			for i in range(0, len(nums) - 1):
				if int(str(nums[i]) + str(nums[i+1])) < int(str(nums[i+1]) + str(nums[i])):
					nums[i+1], nums[i] = nums[i], nums[i+1]
					altered = True
		return str(int(''.join([str(i) for i in nums])))