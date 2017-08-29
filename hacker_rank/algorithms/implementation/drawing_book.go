package main

import "fmt"

func main() {
	numPages, target, startTurns, endTurns := 0, 0, 0, 0
	fmt.Scanf("%d", &numPages)
	fmt.Scanf("%d", &target)
	for i := numPages; i > target; i-- {
		if i % 2 == 0 {
			endTurns += 1
		}
	}
	for i := 1; i <= target; i++ {
		if i % 2 == 0 {
			startTurns += 1
		}
	}
	if endTurns < startTurns {
		fmt.Println(endTurns)
	} else {
		fmt.Println(startTurns)
	}
}