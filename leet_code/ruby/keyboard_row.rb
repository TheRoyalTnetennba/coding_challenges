# @param {String[]} words
# @return {String[]}
def find_words(words)
	rows = {}
	'qwertyuiop'.each_char { |a| rows[a] = 1 }
	'asdfghjkl'.each_char { |a| rows[a] = 2 }
	'zxcvbnm'.each_char { |a| rows[a] = 3 }
	ans = []
	words.each do |word|
		row = rows[word[0].downcase]
		same = true
		idx = 0
		until idx == word.size || !same
			same = false if rows[word[idx].downcase] != row
			idx += 1
		end
		ans << word if same
	end
	ans
end