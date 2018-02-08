import "strings"

func lengthOfLastWord(s string) int {
	words := removeEmpty(strings.Split(s, " "))
	if len(words) > 0 {
		return len(words[len(words) - 1])
	}
	return 0
}

func removeEmpty(arr []string) []string {
	var newArr []string
	for i := 0; i < len(arr); i++ {
		if len(arr[i]) > 0 {
			newArr = append(newArr, arr[i])
		}
	}
	return newArr
}