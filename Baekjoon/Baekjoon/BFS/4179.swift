//  불
//  4179.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let R = input[0]
let C = input[1]

var miro = [[String]]()
for _ in 0..<R {
    let input = readLine()!.map { String($0) }
    miro.append(input)
}

var jihun = Queue<(Int, Int)>()
var jihunVisited = [[Int]](repeating: [Int](repeating: 0, count: C), count: R)
var fire = Queue<(Int, Int)>()
var fireVisited = [[Int]](repeating: [Int](repeating: 0, count: C), count: R)

for i in 0..<R {
    for j in 0..<C {
        if miro[i][j] == "J" {
            jihun.enqueue((i, j))
            jihunVisited[i][j] = 1
        }
        
        if miro[i][j] == "F" {
            fire.enqueue((i, j))
            fireVisited[i][j] = 1
        }
    }
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

// fire BFS
while !fire.isEmpty {
    let x = fire.front!.0
    let y = fire.front!.1
    fire.dequeue()
    
    for dir in 0..<4 {
        let nx = x + dx[dir]
        let ny = y + dy[dir]
        
        if (nx < 0 || ny < 0 || nx >= R || ny >= C) { continue }
        if (fireVisited[nx][ny] != 0 || miro[nx][ny] == "#" || miro[nx][ny] == "F") { continue } // 이미 불이 방문했거나, 벽일 경우
        
        fire.enqueue((nx, ny))
        fireVisited[nx][ny] = fireVisited[x][y] + 1
    }
}

var exitSuccess = false
EndProgram: while !jihun.isEmpty {
    let x = jihun.front!.0
    let y = jihun.front!.1
    jihun.dequeue()
    
    for dir in 0..<4 {
        let nx = x + dx[dir]
        let ny = y + dy[dir]
        
        // 범위를 벗어났다는 것은 탈출에 성공한 것
        if (nx < 0 || ny < 0 || nx >= R || ny >= C) {
            exitSuccess = true
            print(jihunVisited[x][y])
            break EndProgram
        }
        
        // 첫번째 if 문이 아닌 두번째 if 문에서 불의 visited 체크해야함! 이미 불의 visited를 다 체크한 상태이니까 첫번째에서 체크하면 불이 먼저 방문했는지 지훈이가 먼저 방문했는지의 여부와 상관없이 다 처리해버리기 때문.
        if (jihunVisited[nx][ny] != 0 || miro[nx][ny] == "#" || miro[nx][ny] == "F") { continue } // 지훈이가 방문했거나, 벽일 경우
        if (fireVisited[nx][ny] != 0 && fireVisited[nx][ny] <= jihunVisited[x][y] + 1) { continue } // 지훈이가 방문하려는 곳에 불이 이미 지훈이보다 먼저 퍼질 경우.
        
        jihun.enqueue((nx, ny))
        jihunVisited[nx][ny] = jihunVisited[x][y] + 1
    }
}

if !exitSuccess {
    print("IMPOSSIBLE")
}

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
