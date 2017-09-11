package main
import "fmt"

func main() {
	numClouds, jump, cloud, energy := 0, 0, 0, 99
	var clouds []int
	fmt.Scanf("%d", &numClouds)
	fmt.Scanf("%d", &jump)
	idx := jump % numClouds
	for i := 0; i < numClouds; i++ {
		fmt.Scanf("%d", &cloud)
		clouds = append(clouds, cloud)
	}
	if clouds[idx] == 1 {
		energy -= 2
	}
	for idx != 0 {
		energy -= 1
		idx = (idx + jump) % numClouds
    energy -= clouds[idx] * 2
	}
	fmt.Println(energy)
}