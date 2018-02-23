def binary_search(target, arr, idx = 0)
	return -1 if arr.empty?
	return 0 if arr.size == 1 && arr[0] == target
	idx = arr.size / 2 # 2 1
	# puts idx
	mid = arr[idx] # 3 2
	left = arr[0...idx] #[1,2] [1]
	right = arr[(idx+1)...arr.size] #[4] []
	if mid == target
		return idx
	elsif mid > target
		return binary_search(target, left, idx)
	else
		return idx + binary_search(target, right, idx) + 1
	end
end

def get_count(target, arr)
	idx = binary_search(target, arr)
	leftmost = idx
	rightmost = idx
	left = arr[0...idx]
	right = arr[(idx+1)...arr.size]
	left_idx = binary_search(target, left)
	right_idx = binary_search(target, right)
	right = idx - 1
	until left_idx == -1
		left = arr[0...left_idx]

	end
		right = arr[(right_idx + 1)...right.size]
	return 0 if 
	
end


arr1 = [1,2, 3, 4]

arr2 = [2,3,4,5,6,7,8,8,8,8,8,8,8,8,8,8,8]

arr3 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2]

p binary_search(4, arr1) # 1
p binary_search(8, arr2) # 6 
p binary_search(2, arr3) # 1
p arr3.index(2)