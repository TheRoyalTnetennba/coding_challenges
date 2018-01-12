#!/bin/ruby

def repeatedString(s, n)
	if n <= s.size
		return s.chars[0...n].select { |n| n == 'a' }.size
	else
		acount = s.chars.select { |n| n == 'a' }.size * (n / s.size)
		return acount + s.chars[0...(n % s.size)].select { |n| n == 'a' }.size
	end
end

s = gets.strip
n = gets.strip.to_i
result = repeatedString(s, n)
puts result