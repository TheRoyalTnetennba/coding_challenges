def timeConversion(s)
    return "00#{s[2...-2]}" if (s[0..1] == '12') && (s.include? 'A')
    return "12#{s[2...-2]}" if (s[0..1] == '12') && (s.include? 'P')
    return s[0...-2] if s.downcase.include? 'a'
    time = s[0...-2].split(':')
    time[0] = (time[0].to_i + 12).to_s
    time.join(':')
end

s = gets.strip
result = timeConversion(s)
puts result;
