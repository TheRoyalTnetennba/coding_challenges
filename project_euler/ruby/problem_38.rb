# class Pandigitals
#
#   pn = (1..9).to_a.permutation.to_a
#   pn.map! { |x| x.map(&:to_s).join }
#   PANDAS = Hash.new(false)
#   pn.each { |x| PANDAS[x] = true }
#
#   def self.panda?(a, b, c)
#     PANDAS[pandify(a, b, c)]
#   end
#
#   def self.pandify(a, b, c)
#     "#{a}#{b}#{c}"
#   end
#
#   def self.multiples
#     largest = 0
#     (2..9999).each do |a|
#       (2..9999).each do |b|
#         c = a * b
#         pandified = pandify(a, b, c).to_i
#         largest = pandified if panda?(a, b, c) && largest < pandified
#       end
#     end
#     largest
#   end
#
# end
# p Pandigitals.multiples

def panda_mult?(arr)
  str = arr.map(&:to_s).join
  (1..5).each do |a|
    (a+1..8).each do |b|
      multiplier = str[0...a].to_i
      multiplicand = str[a...b].to_i
      multiple = str[b..-1].to_i
      p "multiplier: #{multiplier}; multiplicand: #{multiplicand}; multiple: #{multiple}"
      p "#{multiplier} * #{multiplicand} = #{multiple}; #{multiplier * multiplicand == multiple}"
      p "#{multiple}#{multiplier}#{multiplicand}".size
      return multiple if multiplier * multiplicand == multiple
    end
  end
  false
end

def largest
  pandas = (1..9).to_a.permutation.to_a.reverse
  pandas.each do |arr|
    if panda_mult?(arr)
      p arr.map(&:to_s).join.to_i
      return arr
    end
  end
end
p panda_mult?([9,3,2,7,1,8,6,5,4])
