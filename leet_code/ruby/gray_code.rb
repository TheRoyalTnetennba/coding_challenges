def gray_code(n)
  arr = Array.new(n, '0')
  ans = [arr.join('').to_i(2)]
  i = n
  while i > 0
    i -= 1
    j = i
    narr = arr.dup
    narr[i] = '1'
    ans.push(narr.join('').to_i(2))
    while j > 0
      j -= 1
      narr[j] = '1'
      ans.push(narr.join('').to_i(2))
    end
  end
  ans
end