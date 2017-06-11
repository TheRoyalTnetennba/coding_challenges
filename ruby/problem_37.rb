def prime?(num)
  return false unless num > 1
  (2..Math.sqrt(num).floor).none? { |x| num % x == 0 }
end

def truncatable?(num)
  digits = num.to_s.split('').map(&:to_i)
  (0...digits.size).each do |i|
    return false unless prime?(digits[0..i].join.to_i)
    return false unless prime?(digits[i..-1].join.to_i)
  end
  true
end

def truncatable_sum
  truncatable_primes = []
  num = 8
  until truncatable_primes.size == 11
    truncatable_primes << num if truncatable?(num)
    num += 1
  end
  truncatable_primes.reduce(:+)
end
