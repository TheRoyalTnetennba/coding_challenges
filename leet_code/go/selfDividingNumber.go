func selfDividingNumbers(left int, right int) []int {
	var nums []int
	for i := left; i <= right; i++ {
		if isSelfDividing(i) {
			nums = append(nums, i)
		}
	}
	return nums
}

func isSelfDividing(n int) bool {
	var digits []int
	num := n
	for num > 0 {
		digit := num % 10
		if digit == 0 {
			return false
		}
		digits = append([]int{num%10}, digits...)
		num = num / 10
	}
	for _, el := range digits {
		if n % el != 0 {
			return false
		}
	}
	return true
}