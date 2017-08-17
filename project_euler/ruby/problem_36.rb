def double_palindrome?(num)
  digits = num.to_s.split('').map(&:to_i)
  binary = num.to_s(2)
  digits == digits.reverse && binary == binary.reverse
end

def palindromic_sum(limit = 1000000)
  palindromic_nums = []
  (1...limit).each do |num|
    palindromic_nums << num if double_palindrome?(num)
  end
  palindromic_nums.reduce(:+)
end
