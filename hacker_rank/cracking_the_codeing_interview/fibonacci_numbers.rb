def fibonacci(n)
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

n = gets.to_i
print(fibonacci(n))
