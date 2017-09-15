def max_area(arr)
  area = 0
  i = 0
  j = arr.size - 1
  while i != j
    smaller = arr[i] < arr[j] ? i : j
    area = arr[smaller] * (j - i) if arr[smaller] * (j - i) > area
    smaller == i ? i += 1 : j -= 1
  end
  area
end
