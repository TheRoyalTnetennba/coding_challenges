package main
import (
	"fmt"
)

func main() {
	cases, students, threshold, time := 0, 0, 0, 0
	fmt.Scanf("%d", &cases)
	for i := 0; i < cases; i++ {
		fmt.Scanf("%d", &students)
		fmt.Scanf("%d", &threshold)
		timelies := 0
		for i := 0; i < students; i++ {
			fmt.Scanf("%d", &time)
			if time <= 0 {
				timelies++
			}
		}
		if timelies >= threshold {
			fmt.Println("NO")
		} else {
			fmt.Println("YES")
		}
	}
}