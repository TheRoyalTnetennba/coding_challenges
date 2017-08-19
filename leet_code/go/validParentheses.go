func isValid(s string) bool {
	var stack []string
	for i := 0; i < len(s); i++ {
		char := string(s[i])
		if char == "(" {
			stack = append(stack, ")")
		} else if char == "{" {
			stack = append(stack, "}")
		} else if char == "[" {
			stack = append(stack, "]")
		} else if len(stack) == 0 {
			return false
		} else {
			var x string
			x, stack = stack[len(stack)-1], stack[:len(stack)-1]
			if x != char {
				return false
			}
		}
	}
	return len(stack) == 0
}
