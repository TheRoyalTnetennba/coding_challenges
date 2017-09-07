package main
import (
	"fmt"
	"strconv"
	"math"
)

func reverse(num int) int {
	str := strconv.Itoa(num)
	runes := []rune(str)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	i, _ := strconv.Atoi(string(runes))
	return i
}

func main() {
  start, end, div, beauties := 0, 0, 0, 0
  fmt.Scanf("%d", &start)
  fmt.Scanf("%d", &end)
  fmt.Scanf("%d", &div)
  for i := start; i <= end; i++ {
	  if int(math.Abs(float64(i - reverse(i)))) % div == 0 {
		  beauties++
	  }
  }
  fmt.Println(beauties)
}