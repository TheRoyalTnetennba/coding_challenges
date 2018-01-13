#!/bin/ruby

def taumBday(b, w, x, y, z)
  cost = 0
  if x > y + z
    cost += b * (y + z)
  else
    cost += b * x
  end
  if y > x + z
    cost += w * (x + z)
  else
    cost += w * y
  end
  cost
end

t = gets.strip.to_i
for a0 in (0..t-1)
    b, w = gets.strip.split(' ')
    b = b.to_i
    w = w.to_i
    x, y, z = gets.strip.split(' ')
    x = x.to_i
    y = y.to_i
    z = z.to_i
    result = taumBday(b, w, x, y, z)
    puts result
end
