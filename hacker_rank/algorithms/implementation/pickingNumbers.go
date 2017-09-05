package main
import (
	"fmt"
)

func closeCount(nums []int) int {
	maxLen := 1
	count := make(map[int]int)
	for _, i := range nums {
		if _, ok := count[i]; ok {
			count[i]++
		} else {
			count[i] = 1
		}
	}
	for k, v := range count { 
		subLen := v
		if val, ok := count[k - 1]; ok && subLen + val > maxLen {
			maxLen = subLen + val
		}
		if val, ok := count[k + 1]; ok && subLen + val > maxLen {
			maxLen = subLen + val
		}
	}
	return maxLen
}


func main() {
	times, target := 0, 0
	var numbers []int
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%d", &target)
		numbers = append(numbers, target)
	}
	fmt.Println(closeCount(numbers))
}