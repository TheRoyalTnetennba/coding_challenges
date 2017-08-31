import "strconv"

func isPalindrome(x int) bool {
    if x < 0 { return false }
    str := strconv.Itoa(x)
    for i := 0; i < len(str)/2; i++ {
        j := (len(str) - 1) - i
        if str[i] != str[j] {
            return false
        }
    }
    return true
}