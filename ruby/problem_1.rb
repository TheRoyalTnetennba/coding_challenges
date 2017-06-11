def multiple_sum(n)
  (1...n).select { |x| x % 3 == 0 || x % 5 == 0}.reduce(:+)
end

def multiple_sum2(n)
  sum = 0
  (1...n).each { |i| sum += i if i % 3 == 0 || i % 5 == 0 }
  sum
end
