import "strings"

func numJewelsInStones(J string, S string) int {
	jewels := make(map[string]bool)
	arr := strings.Split(J, "")
	for _, a := range arr {
		jewels[a] = true
	}
	count := 0
	arr = strings.Split(S, "")
	for _, a := range arr {
		if _, ok := jewels[a]; ok {
			count++
		}
	}
	return count
}