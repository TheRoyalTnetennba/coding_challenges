package main
import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	og := []rune("SOS")
	message := []rune(s)
	distortions := 0
	for i, a := range message {
		if a != og[i%3] {
			distortions += 1
		}
	}
	fmt.Println(distortions)
}