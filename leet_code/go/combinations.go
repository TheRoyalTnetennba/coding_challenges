func combine(n int, k int) [][]int {
	if k == 1 {
		var combs [][]int
		for i := 1; i < n + 1; i++ {
			combs = append(combs, []int{ i })
		}
		return combs
	}
	if k == n {
		var combo []int
		for i := 1; i < n + 1; i++ {
			combo = append(combo, i)
		}
		return [][]int{ combo }
	}
	var combinations [][]int
	for _, combo := range combine(n-1, k) {
		combinations = append(combinations, combo)
	}
	part := combine(n-1, k-1)
	for i, _ := range part {
		part[i] = append(part[i], n)
	}
	for _, combo := range part {
		combinations = append(combinations, combo)
	}
	return combinations
}