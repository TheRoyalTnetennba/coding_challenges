package main

import "fmt"

func isPrime(num int, primes []int) bool {
	for _, i := range primes {
		if i >= num {
			return true
		} else if num%i == 0 {
			return false
		}
	}
	return true
}

func getPrimes(limit int) []int {
	primes := []int{2, 3, 5, 7, 11}
	for i := 13; i <= limit; i++ {
		if isPrime(i, primes) {
			primes = append(primes, i)
		}
	}
	return primes
}

func largestPrimeFactor(primes []int, num int) int {
	factor, i, done := num, 0, !isPrime(num, primes)
	for done {
		if factor%primes[i] == 0 && factor/primes[i] == 1 {
			return factor
		}
		if factor%primes[i] == 0 {
			factor /= primes[i]
			done = !isPrime(factor, primes)
			i = 0
		}
		i++
	}
	return factor
}

func largestEl(arr []int) int {
	max := arr[0]
	for _, el := range arr {
		if el > max {
			max = el
		}
	}
	return max
}

func main() {
	times, target := 0, 0
	var targets []int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &target)
		targets = append(targets, target)
	}
	primes := getPrimes(largestEl(targets))
	answers := make(map[int]int)
	for _, el := range targets {
		if val, ok := answers[el]; ok {
			fmt.Println(val)
		} else {
			answers[el] = largestPrimeFactor(primes, el)
			fmt.Println(answers[el])
		}
	}
}
