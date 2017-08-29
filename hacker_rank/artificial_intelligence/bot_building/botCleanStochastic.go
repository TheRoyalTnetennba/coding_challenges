package main

import (
	"fmt"
	"strconv"
	"strings"
)

func getClosest(pos []int, board [][]string) []int {
	for i := 0; i < len(board); i++ {
		for j := 0; j < len(board[i]); j++ {
			if board[i][j] == "d" {
				dirty := []int{i, j}
				return dirty
			}
		}
	}
	return pos
}

func getMove(pos []int, board [][]string) string {
	closest := getClosest(pos, board)
	if pos[0] > closest[0] {
		pos[0] -= 1
		return "UP"
	} else if pos[0] < closest[0] {
		pos[0] += 1
		return "DOWN"
	} else if pos[1] < closest[1] {
		pos[1] += 1
		return "RIGHT"
	} else if pos[1] > closest[1] {
		pos[1] -= 1
		return "LEFT"
	}
	return "CLEAN"
}

func main() {
	var pos []int
	var a string
	for i := 0; i < 2; i++ {
		fmt.Scanf("%v", &a)
		b, _ := strconv.Atoi(a)
		pos = append(pos, b)
	}
	var board [][]string
	for i := 0; i < 5; i++ {
		fmt.Scanf("%v", &a)
		board = append(board, strings.Split(a, ""))
	}
	fmt.Println(getMove(pos, board))
}
