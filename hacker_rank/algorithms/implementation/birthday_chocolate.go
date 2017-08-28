package main

import (
	"fmt"
	"strconv"
)

func stringArrToIntArr(stringArr []string) []int {
	var intArr []int
	for _, el := range stringArr {
		b, _ := strconv.Atoi(el)
		intArr = append(intArr, b)
	}
	return intArr
}

func reduce(a []int) int {
	accum := 0
	for _, i := range a {
		accum += i
	}
	return accum
}

func main() {
	numSquares, day, month, numWays := 0, 0, 0, 0
	fmt.Scanf("%d", &numSquares)
	var stringArr []string
	for i := 0; i < numSquares; i++ {
		var squareString string
		fmt.Scanf("%v", &squareString)
		stringArr = append(stringArr, squareString)
	}
	bar := stringArrToIntArr(stringArr)
	fmt.Scanf("%d", &day)
	fmt.Scanf("%d", &month)
	for i := 0; i <= (numSquares - month); i++ {
		if reduce(bar[i:(i + month)]) == day {
			numWays += 1
		}
	}
	fmt.Println(numWays)
}
