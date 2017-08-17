def two_sum(nums, target)
  counter_hash = Hash.new(0)
  index_hash = Hash.new { |h, k| h[k] = [] }
  nums.each_with_index do |num, i|
    counter_hash[num] += 1
    index_hash[num] << i
    if num * 2 == target
      return index_hash[num] if counter_hash[num] == 2
    elsif counter_hash[target - num] > 0
      return [index_hash[num][0], index_hash[target - num][0]]
    end
  end
end
