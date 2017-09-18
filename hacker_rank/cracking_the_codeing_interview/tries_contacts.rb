#!/bin/ruby

n = gets.strip.to_i
book = []
finds = []
starts_with = Hash.new(0)
for a0 in (0..n-1)
  op,contact = gets.strip.split(' ')
  if op == 'add'
    book << contact
    (1..contact.size).each do |i|
      starts_with[contact[0...i]] += 1
    end
  end
  puts starts_with[contact] if op == 'find'
end
