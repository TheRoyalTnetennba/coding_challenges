package main
import "fmt"

func main() {
	length, numRotations, numQueries, number := 0, 0, 0, 0
	fmt.Scanf("%d", &length)
	fmt.Scanf("%d", &numRotations)
	fmt.Scanf("%d", &numQueries)
	var arr []int
	for i := 0; i < length; i++ {
		fmt.Scanf("%d", &number)
		arr = append(arr, number)
	}
	if numRotations >= length {
		numRotations = numRotations % length
	}
	second := arr[0:(len(arr) - numRotations)]
	first := arr[(len(arr) - numRotations):len(arr)]
	for i := 0; i < numQueries; i++ {
		fmt.Scanf("%d", &number)
		if number < len(first) {
			fmt.Println(first[number])
		} else {
			fmt.Println(second[number - len(first)])
		}
	}
}