import "strings"

func reverseWords(s string) string {
	words := strings.Split(s, " ")
	var reversedWords []string
	for _, word := range words {
		reversedWords = append(reversedWords, reverseWord(word))
	}
	return strings.Join(reversedWords, " ")
}

func reverseWord(s string) string {
	var reversed []string
	arr := strings.Split(s, "")
	for i := len(arr) - 1; i >= 0; i-- {
		reversed = append(reversed, arr[i])
	}
	return strings.Join(reversed, "")
}