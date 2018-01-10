def cutTheSticks(arr)
	until arr.size.zero?
		puts arr.size
		min = arr.min
		arr = arr.map { |el| el - min }
		arr = arr.select { |el| el > 0 }
	end
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = cutTheSticks(arr)
print result.join("\n")