num_els = gets.chomp.to_i
num_els.times do 
    ans = 0
    num = gets.chomp.to_i
    digits = num.to_s.split('')
    digits.each do |a|
        next if a.to_i == 0
        ans += 1 if num % a.to_i == 0
    end
    puts ans
end
