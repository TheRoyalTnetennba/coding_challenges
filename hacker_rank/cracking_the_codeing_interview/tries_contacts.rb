#!/bin/ruby

n = gets.strip.to_i
book = []
finds = []
for a0 in (0..n-1)
  op,contact = gets.strip.split(' ')
  book << contact if op == 'add'
  finds << contact if op == 'find'
end
count = Hash.new(0)
book.each do |word|
  finds.each do |pre|
    count[pre] += 1 if word.start_with?(pre)
  end
end
finds.each do |pre|
  puts count[pre]
end
