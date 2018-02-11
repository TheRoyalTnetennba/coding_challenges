# @param {String} s
# @return {Integer[]}
def partition_labels(s)
	count = Hash.new(0)
	remain = s.size
	s.each_char { |a| count[a] += 1 }
	partitions = []
	str = s.reverse.split('')
	until remain == 0
		part = []
		part_count = Hash.new(0)
		part_complete = false
		until part_complete
			a = str.pop
			remain -= 1
			count[a] -= 1
			part_count[a] += 1
			part << a
			part_complete = true if count[a] == 0 && part_count.keys.all? { |k| count[k] == 0 }
		end
		partitions << part

	end
	partitions.map { |part| part.size }
end