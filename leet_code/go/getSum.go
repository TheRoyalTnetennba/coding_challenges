func getSum(a int, b int) int {
	var slice []int
	slice = append(slice, make([]int, a)...)
	slice = append(slice, make([]int, b)...)
	return len(slice)
}
