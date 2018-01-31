func generateMatrix(n int) [][]int {
	matrix := zeroedMatrix(n)
	dir := "r"
	pos := []int{0, 0}
	num, lmo, tmo, rmo, bmo := 1, 0, 0, n - 1, n - 1
	for num <= n * n {
		if dir == "r" {
			for pos[1] <= rmo {
				matrix[pos[0]][pos[1]] = num
				num += 1
				pos[1] += 1
			}
			dir = "d"
			tmo += 1
			pos[0], pos[1] = tmo, rmo
		}
		if dir == "d" {
			for pos[0] <= bmo {
				matrix[pos[0]][pos[1]] = num
				num += 1
				pos[0] += 1
			}
			dir = "l"
			rmo -= 1
			pos[0], pos[1] = bmo, rmo
		}
		if dir == "l" {
			for pos[1] >= lmo {
				matrix[pos[0]][pos[1]] = num
				num += 1
				pos[1] -= 1
			}
			dir = "u"
			bmo -= 1
			pos[0], pos[1] = bmo, lmo
		}
		if dir == "u" {
			for pos[0] >= tmo {
				matrix[pos[0]][pos[1]] = num
				num += 1
				pos[0] -= 1
			}
			dir = "r"
			lmo += 1
			pos[0], pos[1] = tmo, lmo
		}
	}
	return matrix
}

func zeroedMatrix(n int) [][]int {
	var matrix [][]int
	for i := 0;  i < n; i++ {
		var row []int
		for j := 0; j < n; j++ {
			row = append(row, 0)
		}
		matrix = append(matrix, row)
	}
	return matrix
}