def prime?(num)
  (2..Math.sqrt(num).floor).none? { |x| num % x == 0 }
end

def is_circular_prime(num)
  digits = num.to_s.split('').map(&:to_i)
  (0...digits.size).each do |i|
    return false unless prime?(digits.rotate(i).join.to_i)
  end
  true
end

def circular_prime_count(limit = 1000000)
  circular_primes = []
  (2...limit).each do |num|
    circular_primes << num if is_circular_prime(num)
  end
  circular_primes.size
end
