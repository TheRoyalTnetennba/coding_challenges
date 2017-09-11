package main
import "fmt"

func main() {
	numElements, number := 0, 0
	pMap := make(map[int]int)
	fmt.Scanf("%d", &numElements)
	for i := 1; i <= numElements; i++ {
		fmt.Scanf("%d", &number)
		pMap[number] = i
	}
	for x := 1; x <= numElements; x++ {
		p := pMap[x]
		fmt.Println(pMap[p])
	}
}