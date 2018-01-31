# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
	count = 0
	board.each_index do |r|
		board[r].each_index do |c|
			count += 1 if board[r][c] == 'X' && !is_already_counted(board, [r, c])
		end
	end
	count
end

def is_already_counted(board, pos) # pos = [row, col]
	up = pos[0] != 0 && board[(pos[0]) - 1][pos[1]] == 'X'
	left = pos[1] != 0 && board[pos[0]][(pos[1]) - 1] == 'X'
	up || left
end
