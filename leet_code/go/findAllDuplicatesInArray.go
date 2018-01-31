func findDuplicates(nums []int) []int {
	var x int
	var dupes []int
	count := make(map[int]int)
	for ; len(nums) > 0; {
		x, nums = nums[len(nums)-1], nums[:len(nums)-1]
		if _, ok := count[x]; ok {
			count[x] += 1
		} else {
			count[x] = 1
		}
	}
	for k, v := range count {
		if v > 1 {
			dupes = append(dupes, k)
		}
	}
	return dupes
}


