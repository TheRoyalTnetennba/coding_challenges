import "math"

// Sum of two integers

func getSum(a int, b int) int {
	aa := int(math.Abs(float64(a)))
	ab := int(math.Abs(float64(b)))
	same, multiplier := sameSign(a, b)
	var set []int
	for i := 0; i < 2*aa; i++ {
		set = append(set, 0)
	}
	for i := 0; i < 2*ab; i++ {
		set = append(set, 0)
	}
	if same {
		return len(set) * multiplier
	} else {
		if aa >= ab {
			return len(set[ab:aa]) * multiplier
		} else if aa < ab {
			return len(set[aa:ab]) * multiplier
		}
	}
	return 7
}

func sameSign(a int, b int) (bool, int) {
	if (a >= 0 && b >= 0) || a < 0 && b < 0 {
		if a < 0 {
			return true, 1
		} else {
			return true, -1
		}
	} else if math.Abs(float64(a)) > math.Abs(float64(b)) {
		if a >= 0 {
			return false, 1
		} else {
			return false, -1
		}
	} else if math.Abs(float64(a)) <= math.Abs(float64(b)) {
		if b >= 0 {
			return false, 1
		} else {
			return false, -1
		}
	}
	return false, 0
}

// for some reason, the following is considered an acceptable answer
// func getSum(a int, b int) int {
//     n := a
//     if b < 0 {
//         for i := 0; i > b; i-- {
//             n--
//         }
//     } else {
//         for i := 0; i < b; i++ {
//             n++
//         }
//     }
//     return n
// }
