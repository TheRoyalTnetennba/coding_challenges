arr = gets.strip
arr = arr.split(' ').map(&:to_i)

min = 1.0 / 0.0
max = -1.0 / 0.0
(0...arr.size).each do |i|
    sub = arr[0...i] + arr[i+1..-1]
    sum = sub.reduce(:+)
    min = sum if sum < min
    max = sum if sum > max
end
print "#{min} #{max}"
