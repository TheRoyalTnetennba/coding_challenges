# /* DECODE */

# $CHARMAP = {
# 	"1":  "a",
# 	"2":  "b",
# 	"3":  "c",
# 	"4":  "d",
# 	"5":  "e",
# 	"6":  "f",
# 	"7":  "g",
# 	"8":  "h",
# 	"9":  "i",
# 	"10": "j",
# 	"11": "k",
# 	"12": "l",
# 	"13": "m",
# 	"14": "n",
# 	"15": "o",
# 	"16": "p",
# 	"17": "q",
# 	"18": "r",
# 	"19": "s",
# 	"20": "t",
# 	"21": "u",
# 	"22": "v",
# 	"23": "w",
# 	"24": "x",
# 	"25": "y",
# 	"26": "z",
# }


def decode(code, decoded = '') 
	return [decoded] if code.size == 0
	answers ||= []
	lower = code[0] + ' '
	higher = code[0..1] + ' ' if code[0..1].to_i < 27
	l_code = code[1...code.size] 
	h_code = code[2...code.size]
	lower << decode(l_code, lower) if l_code.size > 0
	higher << decode(h_code, higher) if h_code.size > 0
	answers << lower
	answers << higher

end

p decode("122")


# // func decode(code string) []string {}
# // (in no particular order)
# // decode("122") => ["abb", "av", "lb"]

# decode("1223") => ["abbc", "avw", "lw", "lbc" ]
