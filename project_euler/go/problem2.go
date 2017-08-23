func evenFibonacciSum(lim int) int {
	nums := []int{1, 2}
	for nums[len(nums)-1]+nums[len(nums)-2] <= lim {
		nums = append(nums, nums[len(nums)-1]+nums[len(nums)-2])
	}
	ans := 0
	for _, num := range nums {
		if num%2 == 0 {
			ans += num
		}
	}
	return ans
}
