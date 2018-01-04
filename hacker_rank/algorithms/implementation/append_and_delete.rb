#!/bin/ruby

def appendAndDelete(s, t, k)
	return 'Yes' if k - s.size >= t.size
	one = s.chars
	two = t.chars
	num_ops = 0
	i = 0
	i += 1 until one[i] != two[i] || i == one.size || i == two.size
	until one.size == i
		one.pop()
		num_ops += 1
	end
	until one.size == two.size
		one.push(two[i])
		i += 1
		num_ops += 1
	end
	puts
	k == num_ops || ((k - num_ops).even? && (k - num_ops) > 0) ? 'Yes' : 'No'
end

s = 'abcd'
t = 'abcdert'
k = 10

puts appendAndDelete(s, t, k)
