def trap(arr)
  puddles = Hash.new {|h,k| h[k] = Array.new(2, -1) }
  # first value is total area taken, last value is the water level
  big_l = 0
  big_r = 0
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
