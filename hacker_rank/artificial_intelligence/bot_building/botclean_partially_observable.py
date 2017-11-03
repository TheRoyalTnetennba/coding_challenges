#!/usr/bin/python3

class Solver(object):
	"""docstring for ClassName"""
	def __init__(self, grid):
		self.grid = grid
		self.bot = [0, 0]
		self.get_corners()

	def get_corners(self):
		self.corners = []
		for i in range(len(self.grid)):
			row = []
			for j in range(len(self.grid[i])):
				if (i == 0 or i == len(self.grid) - 1) and (j == 0 or j == len(self.grid[i]) - 1):
					self.corners.append([j, i])
		
	def distance(self, bot, pos):
		return abs(bot[0] - pos[0]) + abs(bot[1] - pos[1])
			
	def next_move(self, board):
		closest = [15, 15]
		for i in range(len(self.grid)):
			for j in range(len(self.grid[i])):
				if board[i][j] in ['d', '-']: self.grid[i][j] = board[i][j]
				if self.grid[i][j] not in ['-', 'b']:
					if self.distance(self.bot, [j, i]) < self.distance(self.bot, closest):
						closest = [j, i]
					if self.distance(self.bot, [j, i]) == self.distance(self.bot, closest):
						closest_current_corner = self.corners[0]
						closest_next_corner = self.corners[0]
						for corner in self.corners:
							if self.distance(closest, corner) < self.distance(closest, closest_current_corner):
								closest_current_corner = corner
							if self.distance([j, i], corner) < self.distance([j, i], closest_next_corner):
								closest_next_corner = corner
						if self.distance([j, i], closest_next_corner) < self.distance(closest, closest_current_corner):
							closest = [j, i]
		if self.grid[0][1] != 'd':
			print(closest)
		if closest[0] == bot[0] and closest[1] == bot[1]:
			self.grid[bot[0]][bot[1]] = '-'
			return 'CLEAN'
		if closest[0] > bot[0]:
			self.bot[1] += 1
			return 'RIGHT'
		if closest[1] < bot[1]:
			self.bot[1] -= 1
			return 'UP'
		if closest[1] > bot[1]:
			self.bot[1] += 1
			return 'DOWN'
		if closest[0] < bot[0]:
			self.bot[1] -= 1
			return 'LEFT'

bot = Solver(False)

if __name__ == "__main__":
	pos = [int(i) for i in input().strip().split()] 
	board = [[j for j in input().strip()] for i in range(5)]
	if not bot.grid: bot.grid = board
	print(bot.next_move(board))

