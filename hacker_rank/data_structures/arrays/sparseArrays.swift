import Foundation

let numStrings = Int(readLine()!)!
var stringsDict = [String: Int]()
for i in 0..<numStrings {
    var str = readLine()!
    if let val = stringsDict[str] {
        stringsDict[str] = val + 1
    } else {
        stringsDict[str] = 1
    }
}
let numQueries = Int(readLine()!)!
for i in 0..<numQueries {
    var str = readLine()!
    if let val = stringsDict[str] {
        print(val)
    } else {
        print(0)
    }
}