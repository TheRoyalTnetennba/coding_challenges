def fact(n)
  n == 0 ? 1 : n*fact(n-1)
end

def comb(n, x)
  fact(n) / (fact(x) * fact(n-x))
end

def b(x, n, pr)
  comb(n, x) * pr**x * (1-pr)**(n-x)
end

a, n = gets.chomp().split(" ").map(&:to_i)
puts (0..2).map { |i| b(i, n, a/100.0) }.reduce(:+).round(3)
puts (2..n).map { |i| b(i, n, a/100.0) }.reduce(:+).round(3)