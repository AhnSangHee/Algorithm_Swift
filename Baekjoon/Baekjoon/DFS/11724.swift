//  연결 요소의 개수
//  11724.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/26.
//

import Foundation

//var input = readLine()!.split(separator: " ").map { Int($0)! }
//let N = input[0]
//let M = input[1]
//
//var graph = [[Int]](repeating: [Int](), count: 1001)
//var visited = [[Bool]](repeating: [Bool](), count: 1001)
//for _ in 0..<N {
//    input = readLine()!.split(separator: " ").map { Int($0)! }
//
//    let u = input[0]
//    let v = input[1]
//
//    graph[u].append(v)
//    graph[v].append(u)
//}
//
//for i in 0..<N {
//    for j in 0..<M {
//        if graph[i][j] != 0 && !visited[i][j] {
//            dfs(x: i, y: j)
//        }
//    }
//}
//
//let dx = [1, 0, -1, 0]
//let dy = [0, 1, 0, -1]
//func dfs(x: Int, y: Int) {
//    visited[x][y] = true
//
//    for dir in 0..<4 {
//        let nx = x + dx[dir]
//        let ny = y + dy[dir]
//
//        if nx < 0 || ny < 0 || nx <= N || ny <= M { continue } // 범위 체크
//        if visited[nx][ny] == true || graph[nx][ny] != 0 { continue }
//
//        dfs(x: nx, y: ny)
//    }
//}
//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
//
//print(a + b)
//
//print(n[2])
