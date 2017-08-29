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

func mostCommonBirds(arr []int) int {
	count := make(map[int]int)
	for i := 1; i < 6; i++ {
		count[i] = 0
	}
	for _, el := range arr {
		count[el] += 1
	}
	highCount, mostCommon := 0, 0
	for i := 1; i < 6; i++ {
		if count[i] > highCount {
			highCount = count[i]
			mostCommon = i
		}
	}
	return mostCommon
}

func main() {
	numBirds := 0
	fmt.Scanf("%d", &numBirds)
	var stringArr []string
	for i := 0; i < numBirds; i++ {
		var squareString string
		fmt.Scanf("%v", &squareString)
		stringArr = append(stringArr, squareString)
	}
	ints := stringArrToIntArr(stringArr)
	
	fmt.Println(mostCommonBirds(ints))
}