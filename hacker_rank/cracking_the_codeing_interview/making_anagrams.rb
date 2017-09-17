#!/bin/ruby

a = gets.strip
b = gets.strip
a_chars = Hash.new(0)
b_chars = Hash.new(0)
del_count = 0
a.each_char { |chr| a_chars[chr] += 1 }
b.each_char { |chr| b_chars[chr] += 1 }
a_chars.each do |k, v|
  until a_chars[k]
