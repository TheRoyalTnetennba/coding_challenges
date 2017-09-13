num_els = gets.chomp.to_i
els = gets.chomp.split(' ').map(&:to_i)
mean = els.reduce(:+).to_f / num_els
sd = els.reduce(0) { |acc, n| acc + (mean - n)**2 }
sd = (sd / num_els)**(0.5)
puts sd.round(1)