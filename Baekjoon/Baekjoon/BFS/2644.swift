//  촌수계산
//  2644.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/23.
//

import Foundation

let n = Int(readLine()!)! // 사람 수
var arr = [[Int]](repeating: [Int](), count: 101)
var dist = [Int](repeating: 0, count: 101)
let peopleNum = readLine()!.split(separator: " ").map { Int($0)! }
let a = peopleNum[0]
let b = peopleNum[1]
let m = Int(readLine()!)! // 주어진 관계 수

// 그래프 생성
for i in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0]
    let y = input[1]
    
    arr[x].append(y)
    arr[y].append(x)
}

var q = [Int]()
q.append(a) // a부터 방문
dist[a] = 1 // 방문 표시

// a와 인접한 모든 배열을 BFS로 탐색
while (!q.isEmpty) {
    let x = q.first!
    q.removeFirst()
    
    // 인접한 곳 체크
    for i in 0..<arr[x].count {
        let nx = arr[x][i];
        if dist[nx] != 0 {
            continue // 이미 방문했다면 continue
        }
        
        dist[nx] = dist[x] + 1 // 계산
        q.append(nx)
    }
}

print(dist[b] - 1)
