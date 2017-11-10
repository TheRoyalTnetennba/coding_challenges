class Solution:
	def isIsomorphic(self, s, t):
		t_count = {}
		s_count = {}
		for i in range(len(t)):
			if t[i] in t_count: t_count[t[i]].append(i)
			else: t_count[t[i]] = [i]
		for i in range(len(s)):
			if s[i] in s_count: s_count[s[i]].append(i)
			else: s_count[s[i]] = [i]
		for k in s_count:
			if s_count[k] != t_count[t[s_count[k][0]]]: return False
		return True