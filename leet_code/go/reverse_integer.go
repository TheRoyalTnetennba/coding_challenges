import "strconv"

func reversal(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

func reverse(x int) int {
	sign := 1
	if x < 0 {
		sign = -1
	}
    x *= sign
    str := strconv.Itoa(x)
    num, _ := strconv.Atoi(reversal(str))
	if num > 2147483650 {
		return 0
	}
	return num * sign
}