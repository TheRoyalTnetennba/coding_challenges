package main
import "fmt"
import "strconv"

func main() {
	var e, el int
	var arr []int
	fmt.Scanf("%d", &e)
	for i := 0; i < e; i++ {
		fmt.Scanf("%d", &el)
		arr = append(arr, el)
	}
	el = arr[len(arr)-1]
	i := len(arr) - 2
	el = arr[len(arr) - 1]
	for i >= 0 && el <= arr[i] {
		arr[i+1] = arr[i]
		printArr(arr)
		i--
	}
	arr[i+1] = el
	printArr(arr)
}

func printArr(arr []int) {
	printable := ""
	for i := 0; i < len(arr); i++ {
		printable += strconv.Itoa(arr[i])
		if i < len(arr) - 1 {
			printable += " "
		}
	}
	fmt.Println(printable)
}