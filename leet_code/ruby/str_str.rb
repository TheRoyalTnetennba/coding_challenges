def str_str(haystack, needle)
  return -1 if needle.size > haystack.size
  return 0 if haystack.size.zero? || needle.size.zero?
  n = needle.size - 1
  i = 0
  while n < haystack.size
    return i if haystack[i..n] == needle
    i += 1
    n += 1
  end 
  return -1
end