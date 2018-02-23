# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
	counter = 0
	nums.each do |num|
		counter = num ^ counter
	end 
	counter
end