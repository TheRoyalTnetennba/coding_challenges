package main
import (
	"fmt"
)

func main() {
	cases, cycles := 0, 0
	fmt.Scanf("%d", &cases)
	for i := 0; i < cases; i++ {
		height := 1
		fmt.Scanf("%d", &cycles)
		for i := 0; i < cycles; i++ {
			if i % 2 == 0 {
				height *= 2
			} else {
				height++
			}
		}
		fmt.Println(height)
	}
}