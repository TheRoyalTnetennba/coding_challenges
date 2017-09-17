#!/bin/ruby

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip.split(' ')
ransom = gets.strip.split(' ')
def can_trace(mag, ran)
  count = Hash.new(0)
  mag.each do |word|
    count[word] += 1
  end
  ran.each do |word|
    count[word] -= 1
    return "No" if count[word] < 0
  end
  "Yes"
end

puts can_trace(magazine, ransom)
