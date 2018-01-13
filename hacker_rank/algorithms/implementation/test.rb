def consecutive(num)
	ways = 0
	left = 1
	right = 1
	sum = 1
	while left <= num / 2
		if sum < num
			right += 1
			sum += right
		elsif sum > num
			sum -= left
			left += 1
		elsif sum == num
			ways += 1
			sum -= left
			left += 1
		end
	end
	ways
end