package main

import "fmt"

func factorial(n int) int {
	if n == 1 {
		return 1
	}
	return n * factorial(n-1)
}

func isMultiple(num int, limit int) bool {
	for i := 1; i <= limit; i++ {
		if num%i != 0 {
			return false
		}
	}
	return true
}

func getLowestMultiple(limit int) int {
	fac := factorial(limit)
	for i := limit; i < fac; i++ {
		if isMultiple(i, limit) {
			return i
		}
	}
	return fac
}

func genAnswers(n int) map[int]int {
	answers := make(map[int]int)
	for i := 1; i <= n; i++ {
		answers[i] = getLowestMultiple(i)
	}
	return answers
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
	answers := genAnswers(largestEl(targets))
	for _, el := range targets {
		fmt.Println(answers[el])
	}

}
