import Foundation

func shifter(arr: [String], numRotations: Int) -> String {
	var tempArr = arr[numRotations..<arr.count] + arr[0..<numRotations]
  return tempArr.joined(separator: " ")
}

var firstline = readLine()!.components(separatedBy: " ").map({Int($0)!})
var numRotations = firstline[1]
var secondLine = readLine()!.components(separatedBy: " ")
print(shifter(arr: secondLine, numRotations: numRotations % secondLine.count))