#!/bin/ruby

def jumpingOnClouds(c)
	pos = 0
	jumps = 0
	while pos != c.size - 1
		pos = c[pos+2] == 0 ? pos + 2 : pos + 1
		jumps += 1
	end
	jumps
end

n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
result = jumpingOnClouds(c)
puts result