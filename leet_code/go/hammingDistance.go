import (
	"strconv"
	"strings"
)

func hammingDistance(x int, y int) int {
	bitArray := intToBitArray(x ^ y)
	deltas := 0
	for i := 0; i < len(bitArray); i++ {
		if bitArray[i] == "1" {
			deltas++
		}
	}
	return deltas
}

func intToBitArray(x int) []string {
	var x64 = int64(x)
	var bits = strconv.FormatInt(x64, 2)
	bitArray := strings.Split(bits, "")
	return bitArray
}
