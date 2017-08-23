func sumOfMultiples(num int) int {
	ans := 0
	for i := 3; i < num; i++ {
		if i%3 == 0 || i%5 == 0 {
			ans += i
		}
	}
	return ans
}
