import "math/rand"

func arrayPairSum(nums []int) int {
	arr := quickSort(nums)
	var pairs [][]int
	for i := 0; i < len(arr); i += 2 {
		pair := arr[i:(i + 2)]
		pairs = append(pairs, pair)
	}
	ans := 0
	for i := 0; i < len(pairs); i++ {
		ans += pairs[i][0]
	}
	return ans
}

func quickSort(arr []int) []int {
	if len(arr) < 2 {
		return arr
	}
	left, right := 0, len(arr)-1
	pivot := rand.Int() % len(arr)
	arr[pivot], arr[right] = arr[right], arr[pivot]
	for i := range arr {
		if arr[i] < arr[right] {
			arr[i], arr[left] = arr[left], arr[i]
			left++
		}
	}
	arr[left], arr[right] = arr[right], arr[left]
	quickSort(arr[:left])
	quickSort(arr[left+1:])
	return arr
}
