#!/bin/ruby

def minimumDistances(a)
	els = Hash.new { |h, k| h[k] = [] }
	dupes = []
	a.each_index do |i| 
		els[a[i]] << i
	end
	els.each { |k, v| dupes.push(k) if v.size > 1 }
	min = -1
	dupes.each do |el|
		els[el].sort!
	end
	dupes.each do |el|
		(0...els[el].size - 1).each do |i|
			j = i + 1
			min = els[el][j] - els[el][i] if els[el][j] - els[el][i] < min || min < 0
		end
	end
	min
end

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
result = minimumDistances(a)
puts result
