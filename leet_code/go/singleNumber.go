func singleNumber(nums []int) int {
	count := make(map[int]bool)
	for _, el := range nums {
		if _, ok := count[el]; ok {
			delete(count, el)
		} else {
			count[el] = true
		}
	}
	for k := range count {
		return k
	}
	return 0
}
