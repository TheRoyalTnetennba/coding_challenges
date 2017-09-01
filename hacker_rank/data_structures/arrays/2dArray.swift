import Foundation

var matrix = [[Int]]()

func getSum(center: [Int]) -> Int {
  var sum = matrix[center[0]][center[1]]
  sum += matrix[center[0]-1][center[1]-1]
  sum += matrix[center[0]-1][center[1]]
  sum += matrix[center[0]-1][center[1]+1]
  sum += matrix[center[0]+1][center[1]-1]
  sum += matrix[center[0]+1][center[1]]
  sum += matrix[center[0]+1][center[1]+1]
  return sum
}

for i in 0...5 {
  matrix.append(readLine()!.components(separatedBy: " ").map({Int($0)!}))
}
var max = -2147483648
for row in 0..<matrix.count {
  if row == 0 || row == 5 {
    continue
  }
  for col in 0..<(matrix[row].count) {
    if col == 0 || col == 5 {
      continue
    } else if getSum(center: [row, col]) > max {
        max = getSum(center: [row, col])
    }
  }
}
print(max)