import Foundation

func reverseNum(num: Int) -> Int {
    let reversed = String(String(num).characters.reversed())
    return Int(reversed)!
}

var days = readLine()!.components(separatedBy: " ").map({Int($0)!})
var beautifulDays = days[0]...days[1]
var numBeautiful = 0

for i in beautifulDays {
    if abs(i - reverseNum(i)) % days[2] == 0 {
        numBeautiful += 1
    }
}

print(numBeautiful)