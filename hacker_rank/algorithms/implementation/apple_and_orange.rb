s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apple = gets.strip
apple = apple.split(' ').map(&:to_i)
orange = gets.strip
orange = orange.split(' ').map(&:to_i)
# s < a + d < t
ha = 0
ho = 0
apple.each { |manzana| ha += 1 if (s <= manzana + a) && (manzana + a <= t) }
orange.each { |naranja| ho += 1 if ( s<= naranja + b) && (naranja + b <= t) }
puts ha
puts ho
