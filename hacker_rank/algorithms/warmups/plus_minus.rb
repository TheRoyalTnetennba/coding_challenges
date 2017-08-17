arr = gets.strip
arr = arr.split(' ').map(&:to_i)

p arr.select { |x| x > 0 }.size / arr.size.to_f
p arr.select { |x| x < 0 }.size / arr.size.to_f
p arr.select { |x| x == 0 }.size / arr.size.to_f
