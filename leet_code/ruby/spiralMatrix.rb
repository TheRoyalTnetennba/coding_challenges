# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
	matrix = empty_matrix()
	n.times { matrix << [] }
	direction = 'r'
	pos = 0
	num = 1
	until num > n * n
		if direction == 'r'
			until matrix[pos].size == n
				matrix[pos] << num
				num += 1
			end
			direction = 'd'
		elsif direction == 'l'

		end
	end
end

def empty_matrix(n)
	matrix = []
	n.times do
		row = []
		n.times do 
			row << 0
		end
		matrix.push(row)
	end
	matrix
end