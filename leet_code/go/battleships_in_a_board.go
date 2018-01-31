func countBattleships(board [][]byte) int {
	count := 0
	for r := 0; r < len(board); r++ {
		for c := 0; c < len(board[r]); c++ {
			if board[r][c] == 88 && !isAlreadyCounted(board, []int{r, c}) {
				count += 1
			}
		}
	}
	return count
}

func isAlreadyCounted(board [][]byte, pos []int) bool {
	up := pos[0] != 0 && board[(pos[0]) - 1][pos[1]] == 88
	left := pos[1] != 0 && board[pos[0]][(pos[1]) - 1] == 88
	return up || left
}