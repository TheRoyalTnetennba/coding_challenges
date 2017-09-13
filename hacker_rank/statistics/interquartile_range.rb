num_els = gets.chomp
els = gets.chomp.split(' ')
els_count = gets.chomp.split(' ')
nums = []
els.each_with_index do |el, idx|
    els_count[idx].to_i.times { nums << el.to_i }
end
nums.sort!
first_half = nums.take(nums.size / 2)
second_half = nums.drop(nums.size.even? ? nums.size / 2 : nums.size / 2 + 1)
q1 = [first_half[first_half.size / 2]]
q3 = [second_half[second_half.size / 2]]
q1 << first_half[first_half.size / 2 - 1] if first_half.size.even?
q3 << second_half[second_half.size / 2 - 1] if second_half.size.even?
one = q1.reduce(:+).to_f / q1.size
three = q3.reduce(:+).to_f / q3.size
puts (three - one).round(1)