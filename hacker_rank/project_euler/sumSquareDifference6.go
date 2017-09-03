package main

import "fmt"

func main() {
	times, target, sum, squareSum, max := 0, 0, 0, 0, 0
	var targets []int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &target)
		targets = append(targets, target)
		if target > max {
			max = target
		}
	}
	plusSquare := make(map[int]int)
	squarePlus := make(map[int]int)
	for i := 1; i <= max; i++ {
		sum += i
		squareSum += i * i
		plusSquare[i] = sum * sum
		squarePlus[i] = squareSum
	}
	for _, el := range targets {
		fmt.Println(plusSquare[el] - squarePlus[el])
	}
}
