package main
import "fmt"

func main() {
	numCases, prisoners, sweets, start := 0, 0, 0, 0
	fmt.Scanf("%d", &numCases)
	for i := 0; i < numCases; i++ {
		fmt.Scanf("%d", &prisoners)
		fmt.Scanf("%d", &sweets)
		fmt.Scanf("%d", &start)
		idx := start - 2 + sweets
		if idx < prisoners {
			fmt.Println(idx + 1)
		} else {
			fmt.Println(idx % prisoners + 1)
		}
	}
}