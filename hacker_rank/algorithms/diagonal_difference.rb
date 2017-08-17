n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end
primary = 0
secondary = 0
a.each_index do |i|
    a[i].each_index do |j|
        next unless i == j
        primary += a[i][j]
        secondary += a[i][(a.size - 1) - i]
    end
end
print (primary - secondary).abs
