import Foundation

let numEls = Int(readLine()!)!
var scores = readLine()!.components(separatedBy: " ").map({Int($0)!})
scores = scores.sorted()
var first = scores[0..<numEls / 2]
var second = numEls % 2 == 0 ? (scores[numEls / 2] + scores[numEls / 2 - 1]) / 2 : scores[numEls / 2]
var swiftSlicesAreBullshit = numEls % 2 == 0 ? scores[(numEls/2)..<numEls] : scores[(numEls/2+1)..<numEls]
var third = [Int]()
for i in swiftSlicesAreBullshit {
    third.append(i)
}
if first.count % 2 == 0 {
    var firstMedian = first[first.count / 2] + first[first.count / 2 - 1]
    print(firstMedian % 2 == 0 ? firstMedian / 2 : firstMedian / 2 + 1)
    print(second)
    var thirdMedian = third[third.count / 2] + third[third.count / 2 - 1]
    print(thirdMedian % 2 == 0 ? thirdMedian / 2 : thirdMedian / 2 + 1)
} 
else {
    print(first[first.count / 2])
    print(second)
    print(third[third.count / 2])
}