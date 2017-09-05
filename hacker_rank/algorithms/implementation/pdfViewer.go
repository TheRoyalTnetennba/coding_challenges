package main
import (
	"fmt"
	"strings"
)

func main() {
	alphabet := []string{"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
	heights := make(map[string]int)
	height, word, highest := 0, "", 0
	for i := 0; i < len(alphabet); i++ {
		fmt.Scanf("%d", &height)
		heights[alphabet[i]] = height
	}
	fmt.Scanf("%s", &word)
	letters := strings.Split(word, "")
	for _, a := range letters {
		if heights[a] > highest {
			highest = heights[a]
		}
	}
	fmt.Println(len(letters) * highest)
}