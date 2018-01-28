# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
	count = Hash.new(0)
	nums.each { |i| count[i] += 1 }
	singles = []
	count.keys.each do |k|
		singles.push(k) if count[k] == 1
	end
	singles
end