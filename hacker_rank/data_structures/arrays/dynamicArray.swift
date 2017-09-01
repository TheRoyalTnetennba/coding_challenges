import Foundation

var firstline = readLine()!.components(separatedBy: " ").map({Int($0)!})
var numSeq = firstline[0]
var numQuery = firstline[1]
var seqList = Array(repeating: [Int](), count: numSeq)
var queryList = [[Int]]()
var lastAnswer = 0
for query in 0..<numQuery {
  queryList.append(readLine()!.components(separatedBy: " ").map({Int($0)!}))
}
for query in queryList {
  var seq = (query[1] ^ lastAnswer) % numSeq
  if query[0] == 1 {
    seqList[seq].append(query[2])
  } else {
    lastAnswer = seqList[seq][query[2] % seqList[seq].count]
    print(lastAnswer)
  }
}