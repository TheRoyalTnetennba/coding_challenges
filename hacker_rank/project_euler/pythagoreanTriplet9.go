package main

import "fmt"

func deriveB(a int, sum int) int {
	dividend := (a * a) - ((a - sum) * (a - sum))
	divisor := (2 * a) - (2 * sum)
	if dividend%divisor == 0 {
		return dividend / divisor
	}
	return -1
}

func isPyth(a int, b int, c int) bool {
	return a*a+b*b == c*c && a < b && b < c
}

func getTriplet(sum int) int {
	maxProd := -1
	for a := 1; a < sum/3; a++ {
		b := deriveB(a, sum)
		c := sum - (a + b)
		if isPyth(a, b, c) && a*b*c > maxProd {
			maxProd = a * b * c
		}
	}
	return maxProd
}

func main() {
	times, target := 0, 0
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &target)
		fmt.Println(getTriplet(target))
	}
}
