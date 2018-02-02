func findMaxLength(nums []int) int {
	hash := make(map[int]int)
	hash[0] = -1
	max, count := 0, 0
	for i := 0; i < len(nums); i++ {
		if nums[i] == 1 {
			count += 1
		} else {
			count += -1
		}
		if _, ok := hash[count]; ok {
			if max < i - hash[count] {
				max = i - hash[count]
			}
		} else {
			hash[count] = i
		}
	}
	return max
}