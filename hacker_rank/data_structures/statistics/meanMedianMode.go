package main

import (
	"fmt"
	"sort"
)

func main() {
	length, number, sum, median, maxCount := 0, 0, 0, float64(0), 0
	count := make(map[int]int)
	var nums []int
	fmt.Scanf("%d", &length)
	for i := 0; i < length; i++ {
		fmt.Scanf("%d", &number)
		sum += number
		nums = append(nums, number)
		if _, ok := count[number]; ok {
			count[number] += 1
		} else {
			count[number] = 1
		}
		if _, ok := count[maxCount]; ok {
			if count[maxCount] < count[number] {
				maxCount = number
			} else if count[maxCount] == count[number] && maxCount > number {
				maxCount = number
			}
		} else {
			maxCount = number
		}
	}
	sort.Ints(nums)
	mean := float64(sum) / float64(len(nums))
	if len(nums)%2 == 0 {
		median = float64(nums[len(nums)/2]+nums[len(nums)/2-1]) / 2.0
	} else {
		median = float64(nums[len(nums)/2])
	}
	if count[maxCount] == 1 {
		maxCount = nums[0]
	}
	mode := float64(maxCount)
	fmt.Println(mean)
	fmt.Println(median)
	fmt.Println(mode)
}
