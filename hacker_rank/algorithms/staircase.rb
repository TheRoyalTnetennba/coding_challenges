n = gets.strip.to_i
m = n - 1
until m < 0
  sub = ''
  m.times { sub << ' '}
  until sub.size == n
      sub << '#'
  end
  puts sub
  m -= 1
end
