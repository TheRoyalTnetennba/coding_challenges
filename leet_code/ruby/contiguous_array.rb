# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
	map = { 0 => -1 }
	max, count = 0, 0
	(0...nums.size).each do |i|
		count += nums[i] == 1 ? 1 : -1
		if map.key? count
			max = [max, i - map[count]].max
		else
			map[count] = i
		end
	end
	max
end
