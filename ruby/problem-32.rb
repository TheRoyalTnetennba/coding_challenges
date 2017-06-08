def panda?(*numbers)
  digits = (1..9).to_a.map(&:to_s)
  numbers.map { |i| i.to_s.split('') }.flatten.sort == digits
end

def pandigital_prods
  products = []
  multiplier = 1
  multiplicand = 1
  (1..9999).each do |multiplier|
    (1..99).each do |multiplicand|
      product = multiplier * multiplicand
      if panda?(multiplier, multiplicand, product)
        products << product unless products.include? product
      end
    end
  end
  products.reduce(:+)
end
# answer is 45228
