package main

import "fmt"

var fibs []int

func evenFibSum(n int) int {
	for fibs[len(fibs)-1] <= n {
		fibs = append(fibs, fibs[len(fibs)-1]+fibs[len(fibs)-2])
	}
	sum := 0
	for i := 0; i < len(fibs); i++ {
		if fibs[i] <= n && fibs[i]%2 == 0 {
			sum += fibs[i]
		}
	}
	return sum
}

func main() {
	fibs = append(fibs, 1)
	fibs = append(fibs, 2)
	var times, num int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &num)
		fmt.Println(evenFibSum(num))
	}
}
