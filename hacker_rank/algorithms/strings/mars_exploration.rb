#!/bin/ruby

def marsExploration(s)
	changes = 0
	template = ''
	(s.size / 3).times { template << 'SOS' }
	s.chars.each_with_index do |a, i|
		changes += 1 if a != template[i]
	end
	changes
end

s = gets.strip
result = marsExploration(s)
puts result
