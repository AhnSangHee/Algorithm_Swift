//  그림
//  1926.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/24.
//

import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var paper = [[Int]]()
var dist = [[Int]](repeating: [Int](repeating: 0, count: 501), count: 501)

for _ in 0..<n {
    input = readLine()!.split(separator: " ").map { Int($0)! }
    paper.append(input)
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

var q = [(Int, Int)]()
var pictureCount = 0
var maxArea = 0
for i in 0..<n {
    for j in 0..<m {
        if (paper[i][j] == 0 || dist[i][j] != 0) { continue } // 그림이 없는 곳이거나, 이미 방문한 곳일 경우 체크
        
        q.append((i, j))
        dist[i][j] = 1
        pictureCount += 1
        
        var areaCount = 0
        while !q.isEmpty {
            areaCount += 1
            
            let x = q.first!.0
            let y = q.first!.1
            q.removeFirst()
            
            for dir in 0..<4 {
                let nx = x + dx[dir]
                let ny = y + dy[dir]
                
                if (nx < 0 || ny < 0 || nx >= n || ny >= m) { continue } // 범위 체크
                if (paper[nx][ny] == 0 || dist[nx][ny] != 0) { continue } // 그림이 없는 부분이거나, 이미 체크한 부분일 경우
                
                q.append((nx, ny))
                dist[nx][ny] = dist[x][y] + 1
            }
        }
        maxArea = max(areaCount, maxArea) // 그림 최대 넓이 구하기
    }
}

print("\(pictureCount)\n\(maxArea)")
