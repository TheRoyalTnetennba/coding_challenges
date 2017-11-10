class Solution(object):
	def isPowerOfTwo(self, n):
		if n == 0: return False
		if n == 1: return True
		if n % 2 != 0: return False
		i = 1
		while 2**i <= n:
			if 2**i == n: return True
			i += 1
		return False