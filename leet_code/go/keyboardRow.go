import "strings"

func findWords(words []string) []string {
	rows := make(map[string]int)
	for _, a := range "qwertyuiop" {
		rows[string(a)] = 1
	}
	for _, a := range "asdfghjkl" {
		rows[string(a)] = 2
	}
	for _, a := range "zxcvbnm" {
		rows[string(a)] = 3
	}
	var ans []string
	for _, n := range words {
		word := strings.Split(n, "")
		same := true
		row := rows[strings.ToLower(word[0])]
		for i := 0; i < len(word) && same; i++ {
			if rows[strings.ToLower(word[i])] != row {
				same = false
			}
		}
		if same {
			ans = append(ans, n)
		}
	}
	return ans
}