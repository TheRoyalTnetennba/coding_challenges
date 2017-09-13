package main

import (
	"fmt"
	"sort"
)

func main() {
	numEls, number, q1, q2, q3 := 0, 0, 0, 0, 0
	count := make(map[int]int)
	var nums []int
	var numbers []int
	fmt.Scanf("%d", &numEls)
	for i := 0; i < numEls; i++ {
		fmt.Scanf("%d", &number)
		nums = append(nums, number)
	}
	for i := 0; i < numEls; i++ {
		fmt.Scanf("%d", &number)
		for j := 0; j < number; j++ {
			numbers = append(numbers, nums[i])
		}
	}
	sort.Ints(numbers)
	if len(numbers)%2 == 0 {
		q2 = (numbers[len(numbers)/2] + numbers[len(numbers)/2-1]) / 2
		if (len(numbers)/2)%2 == 0 {
			q1 = (numbers[(len(numbers)/2)/2] + numbers[(len(numbers)/2)/2-1]) / 2
			q3 = (numbers[(len(numbers)/2)/2*3] + numbers[(len(numbers)/2)/2*3-1]) / 2
		} else {
			q1 = numbers[(len(numbers)/2)/2]
			q3 = numbers[((len(numbers)/2)/2)*3]
		}
	} else {
		q2 = numbers[len(numbers)/2]
		if (len(numbers)/2)%2 == 0 {
			q1 = (numbers[(len(numbers)/2)/2] + numbers[(len(numbers)/2)/2-1]) / 2
			q3 = (numbers[(len(numbers)/2)/2*3] + numbers[(len(numbers)/2)/2*3-1]) / 2
		} else {
			q1 = numbers[(len(numbers)/2)/2]
			q3 = numbers[((len(numbers)/2)/2)*3]
		}
	}
	fmt.Println(q3 - q1)

}
