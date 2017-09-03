package main

import (
	"fmt"
	"strconv"
	"strings"
)

func highestProduct(num string, size int) int {
	strArr := strings.Split(num, "")
	max := 0
	for i := 0; i < len(strArr)-size+1; i++ {
		product := 1
		for j := i; j < i+size; j++ {
			num, _ := strconv.Atoi(strArr[j])
			product *= num
		}
		if product > max {
			max = product
		}
	}
	return max
}

func main() {
	times, num, size := 0, "", 0
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		for j := 0; j < 2; j++ {
			fmt.Scanf("%d", &size)
		}
		fmt.Scanf("%v", &num)
		fmt.Println(highestProduct(num, size))
	}
}
