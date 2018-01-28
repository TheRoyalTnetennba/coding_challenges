package main

import (
	"fmt"
	"bufio"
	"os"
	"errors"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')
	runeSlice, err := reduce([]rune(text))
	for ;err == nil && len(runeSlice) > 0; {
		runeSlice, err = reduce(runeSlice)
	}
	if len(runeSlice) == 0 {
		fmt.Println("Empty String")
	} else {
		fmt.Println(string(runeSlice))
	}
}

func reduce(r []rune) ([]rune, error) {
	var newRuneSlice []rune
	err := errors.New("Not reducible")
	for i := 0; i < len(r); i++ {
		if i == len(r) - 1 {
			newRuneSlice = append(newRuneSlice, r[i])
			continue
		}
		if r[i] == r[i+1] {
			err = nil
			i++
			continue
		}
		newRuneSlice = append(newRuneSlice, r[i])
	}
	if len(newRuneSlice) == 2 && newRuneSlice[0] == newRuneSlice[1] {
		return []rune{}, errors.New("Not reducible")
	}

	return newRuneSlice, err
}
