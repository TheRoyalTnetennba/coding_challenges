func getSum(a int, b int) int {
	sameSign := addOrNot(a, b)
	sign := getSign(a, b, sameSign)
	slice = append(slice, make([]int, a)...)
	slice = append(slice, make([]int, b)...)
	if sameSign {
		var slice []int
		return len(slice) * sign
	} else if a < 0 {
		c := a * -1
	}
}

func addOrNot(a int, b int) bool {
	if (a >= 0 && b >= 0) || (a < 0 && b < 0) {
		return true
	}
	return false
}

func getSign(a int, b int, sameSign bool) int {
	if sameSign && a >= 0 {
		return 1
	} else if sameSign && a <= 0 {
		return -1
	} else if a > b && a >= 0 {
		return 1
	} else if a > b && a < 0 {
		return -1
	} else if a < b && b >= 0 {
		return 1
	} else if a < b && b < 0 {
		return -1
	}
	return 1
}
