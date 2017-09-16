import (
	"strings"
)

func spiral(s []string, l int, r int, c chan int) {
	for l >= 0 && r >= 0 && r < len(s) && s[l] == s[r] {
		l--
		r++
	}
	c <- r - l - 1
}

func longestPalindrome(s string) string {
	front, back, arr, len0, ans := 0, 0, strings.Split(s, ""), 0, []string{}
	for i := 0; i < len(arr); i++ {
		c1, c2 := make(chan int), make(chan int)
		go spiral(arr, i, i, c1)
		go spiral(arr, i, i+1, c2)
		len1 := <-c1
		len2 := <-c2
		if len1 > len2 {
			len0 = len1
		} else {
			len0 = len2
		}
		if len0 > back-front {
			front = i - (len0-1)/2
			back = i + len0/2
		}
	}
	for i := front; i <= back; i++ {
		ans = append(ans, arr[i])
	}
	return strings.Join(ans, "")
}
