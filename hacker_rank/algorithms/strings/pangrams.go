package main
import (
	"fmt"
	"strings"
	"bufio"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	s, _ := reader.ReadString('\n')
	pangram := is_pangram(s)
	if pangram {
		fmt.Println("pangram")
	} else {
		fmt.Println("not pangram")
	}
}

func is_pangram(s string) bool {
	abc := make(map[string]int)
	alphabet := strings.Split("abcdefghijklmnopqrstuvwxyz", "")
	for i := 0; i < len(alphabet); i++ {
		abc[alphabet[i]] = 0
	}
	arr := strings.Split(s, "")
	for i := 0; i < len(arr); i++ {
		abc[strings.ToLower(arr[i])] += 1
	}
	pangram := true
	for i := 0; i < len(alphabet); i++ {
		if abc[alphabet[i]] == 0 {
			pangram = false
		}
	}
	return pangram
}