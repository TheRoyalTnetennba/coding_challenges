package main

import "fmt"

func isPrime(num int, primes []int) bool {
	for _, el := range primes {
		if num%el == 0 {
			return false
		}
	}
	return true
}

func main() {
	times, target, max := 0, 0, 0
	var targets []int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &target)
		targets = append(targets, target)
		if target > max {
			max = target
		}
	}
	primes := []int{2, 3, 5, 7}
	for i := 11; len(primes) < max; i += 2 {
		if isPrime(i, primes) {
			primes = append(primes, i)
		}
	}
	for _, el := range targets {
		fmt.Println(primes[el-1])
	}
}
