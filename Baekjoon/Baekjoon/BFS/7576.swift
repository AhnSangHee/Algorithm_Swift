//  토마토
//  7576.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/24.
//

import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let N = input[1]
var tomato = [[Int]]()

for _ in 0..<N {
    input = readLine()!.split(separator: " ").map { Int($0)! }
    tomato.append(input)
}

var q = Queue<(Int, Int)>()
for i in 0..<N {
    for j in 0..<M {
        if tomato[i][j] == 1 { // 익은 토마토만 추가
            q.enqueue((i, j))
        }
    }
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
while !q.isEmpty {
    let x = q.front!.0
    let y = q.front!.1
    q.dequeue()
    
    for dir in 0..<4 {
        let nx = x + dx[dir]
        let ny = y + dy[dir]
        
        if (nx < 0 || ny < 0 || nx >= N || ny >= M) { continue } // 범위 체크
        if (tomato[nx][ny] != 0) { continue } // 익지 않은 토마토가 아니면 continue, 이미 방문한 토마토면 continue
        
        tomato[nx][ny] = 1 // 토마토 익히기
        tomato[nx][ny] = tomato[x][y] + 1
        q.enqueue((nx, ny))
    }
}

var answer = 0
GetAnswer: for i in 0..<N {
    for j in 0..<M {
        if tomato[i][j] == 0 {
            // 익지 않은 토마토가 존재
            answer = 0
            break GetAnswer
        }
        answer = max(tomato[i][j], answer)
    }
}

print(answer - 1)


struct Queue<T> {
    private var list1: [T] = [] // enqueue를 위한 배열
    private var list2: [T] = [] // dequeue를 위한 배열
    
    var isEmpty: Bool {
        return list1.isEmpty && list2.isEmpty
    }
    
    var count: Int {
        return list1.count + list2.count
    }
    
    var front: T? {
        if list2.isEmpty {
            return list1.first
        } else {
            return list2.last
        }
    }
    
    mutating func enqueue(_ element: T) {
        list1.append(element)
    }
    
    mutating func dequeue() -> T?  {
        if list2.isEmpty {
            list2 = list1.reversed()
            list1.removeAll()
        }
        return list2.popLast()
    }
}
