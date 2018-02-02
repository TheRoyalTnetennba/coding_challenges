# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
	(grid.size - 1).downto(0) do |r|
		(grid[r].size - 1).downto(0) do |c|
			right = c + 1 < grid[r].size ? grid[r][c+1] : false
			down = r + 1 < grid.size ? grid[r+1][c] : false
			min = [right, down].select { |i| i }
			min = min.empty? ? 0 : min.select { |i| i.is_a? Numeric }.min
			grid[r][c] += min
		end
	end
	return grid[0][0]
end

test = [[1,3,1], [1,5,1], [4,2,1]]
p min_path_sum(test)

# [[1,3,1],
#  [1,5,1],
#  [4,2,1]]

# [1,3,1],
# [1,5,1],
# [7,3,1]

# [1,3,1],
# [8,7,2],
# [7,3,1]