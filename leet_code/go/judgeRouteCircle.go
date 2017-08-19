func judgeCircle(moves string) bool {
	var counter = make(map[rune]int)
	for i := 0; i < len(moves); i++ {
		move := rune(moves[i])
		if _, ok := counter[move]; ok {
			counter[move]++
		} else {
			counter[move] = 1
		}
	}
	return counter['D'] == counter['U'] && counter['L'] == counter['R']
}
