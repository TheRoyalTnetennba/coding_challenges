#!/bin/ruby

n,k = gets.strip.split(' ').map(&:to_i)
a = gets.strip.split(' ').map(&:to_i)
k = k >= n ? k % n : k
k.times do
    front = a.shift
    a.push(front)
end
puts a.join(' ')
