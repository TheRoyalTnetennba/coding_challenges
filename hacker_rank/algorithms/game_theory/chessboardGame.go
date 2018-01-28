package main
import "fmt"

func main() {
	var numcases, x, y int
	fmt.Scan(&numcases)
	for i := 0; i < numcases; i++ {
		fmt.Scan(&x)
		fmt.Scan(&y)
		fmt.Println(whoWins(x, y))
	}
}

func whoWins(x, y int) string {
	x = x % 4
	y = y % 4
	if y == 0 || y == 3 || x == 0 || x == 3 {
		return "First"
	}
	return "Second"
}