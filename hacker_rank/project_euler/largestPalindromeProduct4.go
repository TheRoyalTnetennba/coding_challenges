package main

import (
	"fmt"
	"strconv"
)

func reverse(num int) int {
	str := strconv.Itoa(num)
	runes := []rune(str)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	i, _ := strconv.Atoi(string(runes))
	return i
}

func findPali(lim int) int {
	for i := lim - 1; i > 100000; i-- {
		if i == reverse(i) {
			for j := 100; j < 1000; j++ {
				if i%j == 0 && i/j > 99 && i/j < 1000 {
					return i
				}
			}
		}
	}
	return 0
}

func main() {
	times, target := 0, 0
	var targets []int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &target)
		targets = append(targets, target)
	}
	for idx := range targets {
		fmt.Println(findPali(targets[idx]))
	}
}
