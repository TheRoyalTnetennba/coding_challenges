package main

import "fmt"


func main() {
	capital, keyboards, usbs, price := 0, 0, 0, 0
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
  fmt.Println(usbs, kBrands, uBrands)
  
}