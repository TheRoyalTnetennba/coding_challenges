#!/bin/ruby

def encryption(s)
	letters = s.delete(' ').chars
	col_size = Math.sqrt(letters.size).floor
	row_size = Math.sqrt(letters.size).ceil
	matrix = []
	row = []
	letters.each do |a|
		row.push(a)
		if row.size == row_size
			matrix.push(row)
			row = []
		end
	end
	matrix.push(row) if row.size > 0
	encrypted = ''
	c = 0
	until c == matrix[0].size
		matrix.each do |row|
			encrypted << row[c] if c < row.size
		end
		c += 1
		encrypted << ' ' unless c == matrix[0].size
	end
	encrypted

end

s = gets.strip
result = encryption(s)
puts result
