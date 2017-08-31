package main

import (
	"fmt"
	"sort"
)

func main() {
	capital, keyboards, usbs, price, j := 0, 0, 0, 0, 0
  var kBrands, uBrands []int
	fmt.Scanf("%d", &capital)
	fmt.Scanf("%d", &keyboards)
	fmt.Scanf("%d", &usbs)
  for i := 0; i < keyboards; i++ {
	  fmt.Scanf("%d", &price)
		kBrands = append(kBrands, price)
  }
  for i := 0; i < usbs; i++ {
		fmt.Scanf("%d", &price)
	  uBrands = append(uBrands, price)
  }
  sort.Ints(uBrands)
	sort.Sort(sort.Reverse(sort.IntSlice(kBrands)))
	max := -1
	for i := 0; i < keyboards; i++ {
		for ; j < usbs; j++ {
			if kBrands[i]+uBrands[j] > capital {
				break
			} else if kBrands[i] + uBrands[j] > max {
				max = kBrands[i] + uBrands[j]
			}
		}
	}
	fmt.Println(max)
}