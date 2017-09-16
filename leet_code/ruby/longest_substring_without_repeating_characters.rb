def length_of_longest_substring(s)
  used = Hash.new
  longest = 0
  current = []
  s.chars.each do |a|
    current << a
    if used.key? a
      b = ''
      until b == a
        b = current.shift
        used.delete(b)
      end
    end
    used[a] = true
    longest = current.size if current.size > longest
  end
  longest
end
