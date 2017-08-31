package main

import "fmt"

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

func main() {
	// [catA, catB, mouseC]
	queries, pos := 0, 0
  	query := []int{0,0,0}
	fmt.Scanf("%d", &queries)
	for i := 0; i < queries; i++ {
		for j := 0; j < len(query); j++ {
			fmt.Scanf("%d", &pos)
			query[j] = pos
		}
		a, b := abs(query[0] - query[2]), abs(query[1] - query[2])
		if a > b {
			fmt.Println("Cat B")
		} else if a < b {
			fmt.Println("Cat A")
		} else {
			fmt.Println("Mouse C")
		} 
	}
}