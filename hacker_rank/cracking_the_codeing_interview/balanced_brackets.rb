#!/bin/ruby

def is_good(exp)
  stack = []
  exp.each do |n|
    if n == '['
      stack.push(']')
    elsif n == '('
      stack.push(')')
    elsif n == '{'
      stack.push('}')
    elsif n == stack.last
      stack.pop
    else
      return 'NO'
    end
  end
  return stack.empty? ? 'YES' : 'NO'
end

t = gets.strip.to_i
for a0 in (0..t-1)
  expression = gets.strip.split('')
  puts is_good(expression)
end
