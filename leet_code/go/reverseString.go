func reverseString(s string) string {
	reversed := []rune(s)
	for i := 0; i < len(reversed)/2; i++ {
		left := reversed[i]
		right := reversed[len(reversed)-(1+i)]
		reversed[i] = right
		reversed[len(reversed)-(1+i)] = left
	}
	return string(reversed)
}
