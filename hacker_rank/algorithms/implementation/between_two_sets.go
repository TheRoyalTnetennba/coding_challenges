import (
	"fmt"
)

func numInSlice(a int, arr []int) bool {
	for _, b := range arr {
		if b == a {
			return true
		}
	}
	return false
}

func max(a []int) int {
	max := a[0]
	for _, i := range a {
		if i > max {
			max = i
		}
	}
	return max
}

func min(a []int) int {
	min := a[0]
	for _, i := range a {
		if i < min {
			min = i
		}
	}
	return min
}

func commonFactors(aMax int, bMin int, b []int) []int {
	var factors []int
	for i := aMax; i <= bMin; i++ {
		factor := true
		for _, j := range b {
			if j%i != 0 {
				factor = false
			}
		}
		if factor && !numInSlice(i, factors) {
			factors = append(factors, i)
		}
	}
	return factors
}

func numsBetween(a []int, b []int) int {
	factors := commonFactors(max(a), min(b), b)
	var betweens []int
	for _, i := range factors {
		between := true
		for _, j := range a {
			if i%j != 0 {
				between = false
			}
		}
		if between && !numInSlice(i, betweens) {
			betweens = append(betweens, i)
		}
	}
	return len(betweens)
}

func main() {
	var a, b []int
	var aLen, bLen, el int
	fmt.Scanf("%d", &aLen)
	fmt.Scanf("%d", &bLen)
	for i := 0; i < aLen; i++ {
		fmt.Scanf("%d", &el)
		a = append(a, el)
	}
	for i := 0; i < bLen; i++ {
		fmt.Scanf("%d", &el)
		b = append(b, el)
	}
	fmt.Println(numsBetween(a, b))
}
