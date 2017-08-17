def kangaroo(x1, v1, x2, v2)
  return 'NO' if x1 > x2 && v1 > v2
  return 'NO' if x2 > x1 && v2 > v1
  return 'NO' if x2 != x1 && v1 == v2

  arr1 = [x1]
  arr2 = [x2]
  if x1 > x2
    until arr2.max > arr1.max
      arr1 << arr1[-1] + v1
      arr2 << arr2[-1] + v2
    end
  elsif x2 > x1
    until arr1.max > arr2.max
      arr1 << arr1[-1] + v1
      arr2 << arr2[-1] + v2
    end
  else
    return "YES"
  end
  arr1.each_index { |i| return 'YES' if arr1[i] == arr2[i] }
  'NO'
end

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
result = kangaroo(x1, v1, x2, v2)
puts result;
