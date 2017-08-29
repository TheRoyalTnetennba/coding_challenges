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

func numPairs(arr []int) int {
	count := make(map[int]int)
	countPairs := 0
	for i := 0; i < len(arr); i++ {
		if _, ok := count[arr[i]]; !ok {
			count[arr[i]] = 0
		}
		count[arr[i]]++
	}
	for _, v := range count { 
		countPairs += (v / 2)
	}
	return countPairs
}

func main() {
	numInts := 0
	fmt.Scanf("%d", &numInts)
	var stringArr []string
	for i := 0; i < numInts; i++ {
		var squareString string
		fmt.Scanf("%v", &squareString)
		stringArr = append(stringArr, squareString)
	}
	ints := stringArrToIntArr(stringArr)
	fmt.Println(numPairs(ints))
}