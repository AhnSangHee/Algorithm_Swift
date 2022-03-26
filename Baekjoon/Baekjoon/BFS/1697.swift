//  숨바꼭질
//  1697.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]
var queue = Queue<Int>()
var dist = [Int](repeating: 0, count: 100001)

queue.enqueue(N)
dist[N] = 1

// 동생 좌표에 해당하는 배열 값이 0이 아닌 값을 갖는다면 방문한 것이므로 while 문 탈출
while dist[K] == 0 {
    let x = queue.front!
    queue.dequeue()
    
    let dx = [-1, 1, x] // 앞, 뒤, 2배
    for dir in 0..<3 {
        let nx = x + dx[dir]
        
        if (nx < 0 || nx > 100000) { continue } // 범위 밖
        if (dist[nx] != 0) { continue } // 이미 방문한 경우
        
        queue.enqueue(nx)
        dist[nx] = dist[x] + 1
    }
}

print(dist[K] - 1)

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
