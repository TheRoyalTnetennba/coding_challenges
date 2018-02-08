# @param {String} s
# @return {Integer}
def length_of_last_word(s)
	s.split(' ').size > 0 ? s.split.last.size : 0 
end