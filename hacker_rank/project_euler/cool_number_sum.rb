class CoolNums
  def initialize(limit)
    @numbers = Hash.new
    @limit = limit
  end

  def sum_of_digits_power(num)
    digits = num.to_s.split('').map(&:to_i)
    digits.reduce(0) { |sum, n| sum + n**2 }
  end

  def is_cool?(n)
    return @numbers[n] if @numbers.key?(n)
    count = Hash.new(0)
    num = n
    until count[num] > 1 || @numbers.key?(num)
      count[num] += 1
      num = sum_of_digits_power(num)
    end
    cool = (@numbers.key?(num) && @numbers[num]) || num == 1
    count.each do |k, v|
      @numbers[k] = cool
    end
    @numbers[n]
  end

  def sum_of_cools
    sum = 0
    (1..@limit).each { |el| sum += el if is_cool?(el) }
    sum
  end
end

cool = CoolNums.new(1000000)
p cool.sum_of_cools


