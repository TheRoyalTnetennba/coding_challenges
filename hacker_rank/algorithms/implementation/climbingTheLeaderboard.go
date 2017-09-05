package main
import (
	"fmt"
)

func printRankings(board map[int]int, leaders []int, scores []int, lowest int) {
	max := leaders[0]
	min := leaders[len(leaders) - 1]
	idx := len(leaders) - 1
	for _, i := range scores {
		if val, ok := board[i]; ok {
			fmt.Println(val)
		} else if i > max {
			fmt.Println(1)
		} else if i < min {
			fmt.Println(lowest)
		} else {
			for j := idx; j >= 0; j-- {
				if leaders[j] > i {
					idx = j + 1
					fmt.Println(board[leaders[j + 1]])
					break
				}
			}
		}
	}
}

func main() {
	numScores, leader, levels, score := 0, 0, 0, 0
	var leaders, scores []int
	fmt.Scanf("%d", &numScores)
	lowest := 1
	board := make(map[int]int)
	for i := 0; i < numScores; i++ {
		fmt.Scanf("%d", &leader)
		if _, ok := board[leader]; !ok {
			board[leader] = lowest
			lowest++
		} 
		leaders = append(leaders, leader)
	}
	fmt.Scanf("%d", &levels)
	for i := 0; i < levels; i++ {
		fmt.Scanf("%d", &score)
		scores = append(scores, score)
	}
	printRankings(board, leaders, scores, lowest)
}