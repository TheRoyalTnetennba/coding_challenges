func twoSum(nums []int, target int) []int {
	numHash := make(map[int]int)
	for i := 0; i < len(nums); i++ {
		complement := target - nums[i]
		if val, ok := numHash[complement]; ok {
			indices := []int{val, i}
			return indices
		} else {
			numHash[nums[i]] = i
		}
	}
	return []int{0, 0}
}
