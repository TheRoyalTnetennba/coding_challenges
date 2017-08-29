#!/bin/ruby


$fibs = [1,2]

def even_fib_sum(n)
  until $fibs[-1] > n
    $fibs.push($fibs[-1] + $fibs[-2])
  end
  $fibs.select { |x| x < n && x.even? }.reduce(:+) if $fibs[-1] > n
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts even_fib_sum(n)
end
