arr = gets.strip
arr = arr.split(' ').map(&:to_i)
print arr.reduce(:+)
