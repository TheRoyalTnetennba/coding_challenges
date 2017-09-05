package main
import (
	"fmt"
)

func main() {
	numHurdles, maxHeight, hurdle, highest := 0, 0, 0, 0
	fmt.Scanf("%d", &numHurdles)
	fmt.Scanf("%d", &maxHeight)
	for i := 0; i < numHurdles; i++ {
		fmt.Scanf("%d", &hurdle)
		if hurdle > highest {
			highest = hurdle
		}
	}
	if highest > maxHeight {
		fmt.Println(highest - maxHeight)
	} else {
		fmt.Println(0)
	}
}