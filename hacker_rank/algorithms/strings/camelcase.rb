#!/bin/ruby

s = gets.strip
puts s.chars.reduce(s.size > 0 ? 1 : 0) { |sum, n| sum + (n == n.upcase ? 1 : 0) }

