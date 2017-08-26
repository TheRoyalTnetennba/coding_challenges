package main

import "fmt"

func main() {
	var pBook = make(map[string]int)
	var times, num int
	var key string
	fmt.Scanf("%d", &times)
	for i := 0; i < times; i++ {
		fmt.Scanf("%v", &key)
		fmt.Scanf("%d", &num)
		pBook[key] = num
	}
	fmt.Scanf("%v", &key)
	for len(key) > 0 {
		if val, ok := pBook[key]; ok {
			str := fmt.Sprintf("%v=%d", key, val)
			fmt.Println(str)
		} else {
			fmt.Println("Not found")
		}
		key = ""
		fmt.Scanf("%v", &key)
	}
}
