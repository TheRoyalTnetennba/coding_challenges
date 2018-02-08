# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
	jewels = Hash.new(false)
	j.each_char { |a| jewels[a] = true }
	count = 0
	s.each_char { |a| count += 1 if jewels[a] }
	count
end