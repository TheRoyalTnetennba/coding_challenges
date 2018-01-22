func anagramMappings(A []int, B []int) []int {
	bIdx := make(map[int]int)
	for i := 0; i < len(B); i++ {
		bIdx[B[i]] = i
	}
	var idxMap []int
	for i := 0; i < len(A); i++ {
		idxMap = append(idxMap, bIdx[A[i]])
	}
	return idxMap
}