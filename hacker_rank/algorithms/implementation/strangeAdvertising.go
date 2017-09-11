package main
import "fmt"

func main() {
	numDays, numLikes, newLikes := 0, 2, 0
	fmt.Scanf("%d", &numDays)
  	likes := []int{2}
	for ; numDays > 1; numDays-- {
    newLikes = (likes[len(likes) - 1] * 3) / 2
    numLikes += newLikes
    likes = append(likes, newLikes)
	}
	fmt.Println(numLikes)
}