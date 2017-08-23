import "strings"

func romanToInt(s string) int {
	sum := 0
	if strings.Index(s, "IV") != -1 {
		sum -= 2
	}
	if strings.Index(s, "IX") != -1 {
		sum -= 2
	}
	if strings.Index(s, "XL") != -1 {
		sum -= 20
	}
	if strings.Index(s, "XC") != -1 {
		sum -= 20
	}
	if strings.Index(s, "CD") != -1 {
		sum -= 200
	}
	if strings.Index(s, "CM") != -1 {
		sum -= 200
	}

	for i := 0; i <= len(s)-1; i++ {
		if s[i] == 'M' {
			sum += 1000
		}
		if s[i] == 'D' {
			sum += 500
		}
		if s[i] == 'C' {
			sum += 100
		}
		if s[i] == 'L' {
			sum += 50
		}
		if s[i] == 'X' {
			sum += 10
		}
		if s[i] == 'V' {
			sum += 5
		}
		if s[i] == 'I' {
			sum += 1
		}
	}
	return sum
}
