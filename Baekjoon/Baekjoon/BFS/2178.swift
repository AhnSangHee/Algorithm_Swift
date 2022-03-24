//  미로 탐색
//  2178.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var miro = [[Int]]()
var dist = [[Int]](repeating: [Int](repeating: 0, count: 101), count: 101)

for _ in 0..<N {
    let input = Array(readLine()!.map { Int(String($0))! })
    miro.append(input)
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

var q = [(Int, Int)]()
q.append((0, 0)) // 시작 지점
dist[0][0] = 1 // 방문 표시

while !q.isEmpty {
    let x = q.first!.0
    let y = q.first!.1
    q.removeFirst()
    
    for dir in 0..<4 {
        let nx = x + dx[dir]
        let ny = y + dy[dir]
        
        if (nx < 0 || ny < 0 || nx >= N || ny >= M) { continue } // 범위 체크
        if (dist[nx][ny] != 0 || miro[nx][ny] == 0) { continue } // 이미 방문한 적이 있거나, 이동할 수 없는 칸일 경우
        
        q.append((nx, ny))
        dist[nx][ny] = dist[x][y] + 1
    }
}

print(dist[N - 1][M - 1])
