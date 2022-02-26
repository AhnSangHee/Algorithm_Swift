//  요세푸스 문제
//  1158.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var queue = Queue<Int>()
for i in 1...N {
    queue.enqueue(i)
}
print("<", terminator: "")

while !queue.isEmpty {
    for _ in 0..<(K - 1) {
        queue.enqueue(queue.front!)
        queue.dequeue()
    }
    
    print(queue.front!, terminator: "")
    queue.dequeue()
    
    if !queue.isEmpty {
        print(", ", terminator: "")
    }
}

print(">")


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
