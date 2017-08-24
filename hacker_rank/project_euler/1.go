package main

import "fmt"

func getSum(n int) int {
	a := (n - 1) / 3
	b := (n - 1) / 5
	c := (n - 1) / 15
	a1 := 3*a + 3
	b1 := 5*b + 5
	c1 := 15*c + 15
	sum := ((a * a1) / 2) + ((b * b1) / 2) - ((c * c1) / 2)
	return sum
}

func main() {
	var times, num int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &num)
		fmt.Println(getSum(num))
	}
}
