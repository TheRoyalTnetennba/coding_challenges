package main

import "fmt"

func main() {
	target, size, num := 0, 0, 0
	fmt.Scanf("%d", &target)
	fmt.Scanf("%d", &size)
	for i := 0; i < size; i++ {
		fmt.Scanf("%d", &num)
		if num == target {
			fmt.Println(i)
			break
		}
	}
}
