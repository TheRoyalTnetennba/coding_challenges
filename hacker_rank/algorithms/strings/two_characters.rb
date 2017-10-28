#!/bin/ruby

def is_t(arr)
    (0...arr.size - 2).each do |i|
        return false unless arr[i] != arr[i+1]
        return false unless arr[i] == arr[i+2]
    end
end

len = gets.strip.to_i
s = gets.strip.chars
largest = 0
letters = Hash.new(0)
s.each { |a| letters[a] += 1 }
max = 0
letters = letters.keys
letters.each do |a|
    letters.each do |b|
        next if a == b
        arr = s.select { |c| c == a || c == b }
        max = arr.size if is_t(arr) && arr.size > max
    end
end
puts max
