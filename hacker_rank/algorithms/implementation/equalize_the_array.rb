#!/bin/ruby

def equalizeArray(arr)
	elements = Hash.new(0)
	max = arr[0]
	arr.each do |el|
		elements[el] += 1
		max = el if elements[max] < elements[el]
	end
	arr.size - elements[max]
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = equalizeArray(arr)
puts result
