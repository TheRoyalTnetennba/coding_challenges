#!/bin/ruby

a = gets.strip
b = gets.strip
a_chars = Hash.new(0)
b_chars = Hash.new(0)
unique_chars = Hash.new
del_count = 0
a.each_char { |chr| a_chars[chr] += 1; unique_chars[chr] = true }
b.each_char { |chr| b_chars[chr] += 1; unique_chars[chr] = true }
unique_chars.each do |k, v|
  until a_chars[k] <= b_chars[k]
    a_chars[k] -= 1
    del_count += 1
  end
  until b_chars[k] <= a_chars[k]
    b_chars[k] -= 1
    del_count += 1
  end
end
puts del_count
