def fact(n)
  n == 0 ? 1 : n*fact(n-1)
end

def comb(n, x)
  fact(n) / (fact(x) * fact(n-x))
end

def b(x, n, pr)
  comb(n, x) * pr**x * (1-pr)**(n-x)
end

l, r = gets.chomp().split(" ").map(&:to_f)
odds = l / r
events = (3...7).map { |i| b(i, 6, odds / (1 + odds)) }
print events.reduce(:+).round(3)
