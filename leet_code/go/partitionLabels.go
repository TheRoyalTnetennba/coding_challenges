func partitionLabels(S string) []int {
	count := make(map[rune]int)
	remain, pos := len(S), 0
	var partitions []int
	for i := 0; i < len(S); i++ {
		if _, ok := count[rune(S[i])]; ok {
			count[rune(S[i])] += 1
		} else {
			count[rune(S[i])] = 1
		}
	}
	for remain > 0 {
		var part []rune
		part_count := make(map[rune]int)
		part_complete := false
		for !part_complete {
			a := rune(S[pos])
			pos += 1
			remain -= 1
			count[a] -= 1
			if _, ok := part_count[a]; ok {
				part_count[a] += 1
			} else {
				part_count[a] = 1
			}
			part_count[a] += 1
			part = append(part, a)
			if count[a] == 0 {
				finished := true
				for k, _ := range part_count {
					if count[k] != 0 {
						finished = false
					}
				}
				if finished {
					part_complete = true
				}
			}
		}
		partitions = append(partitions, len(part))
	}
	return partitions
}
