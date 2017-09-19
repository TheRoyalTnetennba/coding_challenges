#!/bin/ruby

def is_prime?(n)
  (2..Math.sqrt(n).to_i).each { |x| return false if (n % x).zero? }
  n > 1
end


p = gets.strip.to_i
max = false
nums = []
p.times do
  n = gets.strip.to_i
  max = n if !max || n > max
  nums.push(n)
end

primes = Hash.new(false)
(1..max).each { |num| primes[num] = is_prime?(num) }
nums.each { |l| puts primes[l] ? 'Prime' : 'Not prime' }
