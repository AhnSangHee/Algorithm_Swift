//  연결 요소의 개수
//  11724.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/26.
//

import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var graph = [[Int]](repeating: [Int](), count: 1001)
var check = [Bool](repeating: false, count: 1001)
var answer = 0
for _ in 0..<M {
    input = readLine()!.split(separator: " ").map { Int($0)! }

    let u = input[0]
    let v = input[1]

    graph[u].append(v)
    graph[v].append(u)
}

for i in 1...N {
    if check[i] {
        continue
    }
    
    dfs(x: i)
    answer += 1
}

func dfs(x: Int) {
    check[x] = true

    for i in 0..<graph[x].count {
        if check[graph[x][i]] { continue }
        dfs(x: graph[x][i])
    }
}

print(answer)
