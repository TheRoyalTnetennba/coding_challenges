# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
	current_power = 1
	ans = [0]
	(1..num).each do |n|
		if n > 2**current_power
			ans.push(ans.last + 1)
			current_power += 1
		elsif n == 2**current_power
			ans.push(1)
		elsif n == 2**current_power - 1
			ans.push(current_power)
		else
			idx = n - 2**(current_power - 1)
			ans.push(ans[idx] + ans[2**(current_power - 1)])
		end

	end 
	ans
end