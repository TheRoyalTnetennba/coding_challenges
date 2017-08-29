package main

import (
	"fmt"
	"strconv"
	"sort"
)

func stringArrToIntArr(stringArr []string) []int {
	var intArr []int
	for _, el := range stringArr {
		b, _ := strconv.Atoi(el)
		intArr = append(intArr, b)
	}
	return intArr
}

func numPairs(arr []int, k int) int {
	countPairs := 0
	for i := 0; i < len(arr) - 1; i++ {
		for j := i + 1; j < len(arr); j++ {
      sum:= arr[i] + arr[j]
			if sum >= k && sum % k == 0  {
				countPairs += 1
			}
		}
	}
	return countPairs
}

func main() {
	numInts, k := 0, 0
	fmt.Scanf("%d", &numInts)
	fmt.Scanf("%d", &k)
	var stringArr []string
	for i := 0; i < numInts; i++ {
		var squareString string
		fmt.Scanf("%v", &squareString)
		stringArr = append(stringArr, squareString)
	}
	ints := stringArrToIntArr(stringArr)
	sort.Ints(ints)
	fmt.Println(numPairs(ints, k))
}