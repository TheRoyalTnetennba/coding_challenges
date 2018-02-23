

def word_search(word, matrix)
	(0...matrix.size).each do |r|
		(0...matrix[r].size).each do |c|
			return 1 if complete_word(word, [r, c], matrix, 0)
		end
	end
	return 0
	# return 0 or 1
end


def complete_word(word, pos, matrix, idx, map = Hash.new(false))
	return false if matrix[pos[0]][pos[1]] != word[idx]
	return false if map[pos.map(&:to_s).join('!')]
	return true if matrix[pos[0]][pos[1]] == word[idx] && idx == word.size - 1
	map[pos.map(&:to_s).join('')] = true
	p map
	up = [pos[0] - 1, pos[1]]
	down = [pos[0] + 1, pos[1]]
	left = [pos[0], pos[1] - 1]
	right = [pos[0], pos[1] + 1]
	up_check = up[0] >= 0 ? complete_word(word, up, matrix, idx + 1, map) : false
	left_check = left[1] >= 0 ? complete_word(word, left, matrix, idx + 1, map) : false
	right_check = right[1] < matrix[0].size ? complete_word(word, right, matrix, idx + 1, map) : false
	down_check = down[0] < matrix.size ? complete_word(word, up, matrix, idx + 1, map) : false
	p map
	return up_check || left_check || right_check || down_check
end

matrix = [
	['a','b','c'],
	['a', 'b', 't'],
	['r', 'b', 'f'],
]



p word_search('bab', matrix) # should be false
p word_search('abe', matrix) # should be true
p word_search('bbf', matrix)
