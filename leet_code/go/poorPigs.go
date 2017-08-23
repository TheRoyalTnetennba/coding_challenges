func poorPigs(buckets int, minutesToDie int, minutesToTest int) int {
	deadPigs := 0
	for exponent((minutesToTest/minutesToDie+1), deadPigs) < buckets {
		deadPigs += 1
	}
	return deadPigs
}

func exponent(base int, exponent int) int {
	power := 1
	for i := 0; i < exponent; i++ {
		power *= base
	}
	return power
}
