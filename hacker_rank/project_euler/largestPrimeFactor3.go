package main

import (
	"fmt"
	"math"
)

func isPrime(num int) bool {
	if num < 2 {
		return false
	}
	for i := 2; i < int(math.Sqrt(float64(num))); i++ {
		if num%i == 0 {
			return false
		}
	}
	return true
}

func reducio(num int) int {
	for num%2 == 0 {
		num /= 2
	}
	if num < 3 {
		return 2
	}
	j := 0
	for i := 3; i <= int(math.Sqrt(float64(num))); i += 2 {
		j = i
		for num%i == 0 {
			num /= i
		}
	}
	if num > 2 {
		return num
	} else {
		return j
	}
}

func main() {
	times, target := 0, 0
	var targets []int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &target)
		targets = append(targets, target)
	}
	for i := range targets {
		fmt.Println(reducio(targets[i]))
	}
}
