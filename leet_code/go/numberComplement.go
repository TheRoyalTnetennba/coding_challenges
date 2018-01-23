import (
	"strconv"
	"strings"
)

func findComplement(num int) int {
	bin := strconv.FormatInt(int64(num), 2)
	bits := strings.Split(bin, "")
	for i := 0; i < len(bits); i++ {
		if bits[i] == "1" {
			bits[i] = "0"
		} else {
			bits[i] = "1"
		}
	}
	bin = strings.Join(bits, "")
	i, _ := strconv.ParseInt(bin, 2, 64)
	return int(i)
}