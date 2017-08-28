import (
	"fmt"
)

func main() {
	lrb, hrb, games, score := 0, 0, 0, 0
	fmt.Scanf("%d", &games)
	fmt.Scanf("%d", &score)
	lowest, highest := score, score
	for i := 1; i < games; i++ {
		fmt.Scanf("%d", &score)
		if score < lowest {
			lowest = score
			lrb++
		}
		if score > highest {
			highest = score
			hrb++
		}
	}
	fmt.Println(hrb, lrb)
}
