package main

// TODO: Improve efficiency of route
import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

func getDistance(a []int, b []int) int {
	deltaX := int(math.Abs(float64(a[0]) - float64(b[0])))
	deltaY := int(math.Abs(float64(a[1]) - float64(b[1])))
	return deltaX + deltaY
}

func getClosest(pos []int, board [][]string) []int {
	closest := []int{len(board) * 3, len(board[0]) * 3}
	min := getDistance(pos, closest)
	for i := 0; i < len(board); i++ {
		for j := 0; j < len(board[i]); j++ {
			if board[i][j] == "d" {
				dist := getDistance(pos, []int{i, j})
				if dist < min {
					min = dist
					closest[0], closest[1] = i, j
				}
			}
		}
	}
	return closest
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
	rows, cols := 0, 0
	for i := 0; i < 2; i++ {
		fmt.Scanf("%v", &a)
		b, _ := strconv.Atoi(a)
		pos = append(pos, b)
	}
	fmt.Scanf("%d", &rows)
	fmt.Scanf("%d", &cols)
	var board [][]string
	for i := 0; i < rows; i++ {
		fmt.Scanf("%v", &a)
		board = append(board, strings.Split(a, ""))
	}
	fmt.Println(getMove(pos, board))
}
