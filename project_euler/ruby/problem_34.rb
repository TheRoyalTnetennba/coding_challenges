def factorial(num)
  return 1 if num < 1
  num * (factorial(num - 1))
end

def digit_factorial_sum(num)
  digits = num.to_s.split('').map(&:to_i)
  digits.map! { |x| factorial(x) }
  digits.reduce(:+) == num
end

def digit_factorials
  facts = []
  (10..999999).each do |num|
    facts << num if digit_factorial_sum(num)
  end
  facts.reduce(:+)
end
