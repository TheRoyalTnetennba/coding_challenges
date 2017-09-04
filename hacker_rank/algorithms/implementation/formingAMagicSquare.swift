import Foundation

var input = [[Int]]()
input.append(String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}))
input.append(String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}))
input.append(String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}))

func diffs(matrix mat1: [[Int]], into mat2: [[Int]]) -> Int {
    var diff = 0
    for row in 0...2 {
        for column in 0...2 {
            diff += abs(mat1[row][column] - mat2[row][column])
        }
    }
    return diff
}

let magicSquares = [
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]]
]

var output = 55
for matrix in magicSquares {
    let diff = diffs(matrix: input, into: matrix)
    output = (diff < output) ? diff : output
}
print(output)