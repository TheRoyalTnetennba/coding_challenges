# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
	matrix = []
	num_rows.times { matrix << [] }
	arr = s.chars.reverse

	pos = [0, 0]
	until arr.empty?
		pos, arr, matrix = go_down(pos, arr, matrix)
		pos, arr, matrix = go_diagonal(pos, arr, matrix) unless arr.empty?
		
	end
	ans = ''
	matrix.each do |row|
		ans += row.join('')
	end
	ans
	matrix
end

def go_diagonal(pos, arr, matrix)
	until pos[0] == 0
		pos[1] += 1
		pos[0] -= 1
		matrix[pos[0]][pos[1]] = arr.pop
	end
	return pos, arr, matrix
end

def go_down(pos, arr, matrix)
	pos[0] += 1 if matrix[pos[0]]pos[1] != nil && 
	matrix.each do |row|
		row[pos[1]] = arr.pop
		pos[0] += 1
	end
	pos[0] -= 1
	return pos, arr, matrix
end

def add_column(matrix)
	matrix.each do |row|
		row << ""
	end
	matrix
end

matrix = convert("PAYPALISHIRING" ,3)

matrix.each do |row|
	p row
end