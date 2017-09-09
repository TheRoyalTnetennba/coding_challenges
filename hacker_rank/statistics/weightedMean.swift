import Foundation

let numEls = Int(readLine()!)
let scores = readLine()!.components(separatedBy: " ").map({Double($0)!})
let weight = readLine()!.components(separatedBy: " ").map({Double($0)!})
var dividend = 0.0
var divisor = 0.0
for i in 0..<scores.count {
    dividend += scores[i] * weight[i]
    divisor += weight[i]
}
print(Double(round(10*(dividend / divisor))/10))