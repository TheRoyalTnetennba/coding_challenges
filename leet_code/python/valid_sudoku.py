class Solution:
	def isValidSudoku(self, board):
		"""
		:type board: List[List[str]]
		:rtype: bool
		"""
		for row in board:
			used = []
			for i in row:
				if i in used: return False
				if i != '.':
					if int(i) < 1 or int(i) > 9: return False
					used.append(i)
		for i in range(len(board)):
			used = []
			for j in range(len(board)):
				if board[j][i] in used: return False
				if board[j][i] != '.':
					if int(board[j][i]) < 1 or int(board[j][i]) > 9: return False
					used.append(board[j][i])
		for i in [0, 3, 6]:
			for j in [0, 3, 6]:
				used = []
				for r in range(i, i+3):
					for c in range(j, j+3):
						if board[r][c] in used: return False
						if board[r][c] != '.':
							if int(board[r][c]) < 1: return False
							if int(board[r][c]) > 9: return False
							used.append(board[r][c])
		return True