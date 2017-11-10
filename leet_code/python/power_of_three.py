class Solution(object):
  def isPowerOfThree(self, n):
    if n == 0: return False
    if n == 1: return True
    if n % 3 != 0: return False
    i = 1
    while 3**i <= n:
      if 3**i == n: return True
      i += 1
    return False