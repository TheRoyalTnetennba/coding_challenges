package main

import (
	"fmt"
)

func main() {
	var i, j int
	var text string
	fmt.Scan(&i)
	fmt.Scan(&text)
	fmt.Scan(&j)
	shift := j % 26
	plain := []rune(text)
	cipher := genCaesarCipher(shift)
	var encrypted []rune
	for i, a := range plain {
		val, ok := cipher[a]
		if ok {
			encrypted = append(encrypted, val)
		} else {
			encrypted = append(encrypted, plain[i])
		}
	}
	fmt.Println(string(encrypted))

}

func genCaesarCipher(shift int) map[rune]rune {
	alphabet := []rune("abcdefghijklmnopqrstuvwxyz")
	cipher := make(map[rune]rune)
	for i, a := range alphabet {
		j := i + shift
		if j > 25 {
			j -= 26
		}
		cipher[a] = alphabet[j]
	}
	alphabet = []rune("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
	for i, a := range alphabet {
		j := i + shift
		if j > 25 {
			j -= 26
		}
		cipher[a] = alphabet[j]
	}
	return cipher
}