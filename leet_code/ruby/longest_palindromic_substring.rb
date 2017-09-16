def spiral(s, l, r)
  while l >= 0 && r >= 0 && s[l] == s[r]
    l -= 1
    r += 1
  end
  return r - l - 1
end

def longest_palindrome(s)
  front = 0
  back = 0
  (0...s.size).each do |i|
    len1 = spiral(s, i, i)
    len2 = spiral(s, i, i + 1)
    len = len1 > len2 ? len1 : len2
    if len > back - front
      front = i - (len - 1) / 2
      back = i + len / 2
    end
  end
  return s[front..back]
end
