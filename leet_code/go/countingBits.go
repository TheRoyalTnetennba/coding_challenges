import "math"

func countBits(num int) []int {
	currentPower := 1
	var ans []int
	ans = append(ans, 0)
	for i := 1; i <= num; i++ {
		if i > int(math.Pow(float64(2), float64(currentPower))) {
			ans = append(ans, ans[len(ans) - 1] + 1)
			currentPower++
		} else if i == int(math.Pow(float64(2), float64(currentPower))) {
			ans = append(ans, 1)
		} else if i == int(math.Pow(float64(2), float64(currentPower))) - 1 {
			ans = append(ans, currentPower)
		} else {
			idx := i - int(math.Pow(float64(2), float64(currentPower - 1)))
			ans = append(ans, ans[idx] + ans[int(math.Pow(float64(2), float64(currentPower - 1)))])
		}
	}
	return ans
}