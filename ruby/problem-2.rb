def even_fib_sum(n)
  fibs = [1, 2]
  while fibs[-1] < n
    fibs << fibs[-2] + fibs[-1]
  end
  fibs.select { |i| i < n && i.even? }.reduce(:+)
end

def even_fib_sum2(n)
  fibs = [1, 2]
  sum = 2
  while fibs[-1] < n
    next_fib = fibs[-1] + fibs[-2]
    fibs << next_fib
    sum += next_fib if next_fib.even? && next_fib < n
  end
  sum
end

p even_fib_sum(4000000)
p even_fib_sum2(4000000)
