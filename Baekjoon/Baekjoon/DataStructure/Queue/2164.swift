//  카드2
//  2164.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/29.
//

import Foundation

struct AnotherQueue<T> {
    var list1: [T] = [] // enqueue를 위한 배열
    var list2: [T] = [] // dequeue를 위한 배열
    
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
    
    var last: T? {
        if list2.isEmpty {
            return list1.last
        } else {
            return list2.first
        }
    }
    
    mutating func enqueue(_ element: T) {
        list1.append(element)
    }
    
    mutating func dequeue() -> T?  {
        // list2가 비어있을 때에만 list1의 요소들을 reversed()로 복사해옴
        if list2.isEmpty {
            list2 = list1.reversed()
            list1.removeAll()
        }
        return list2.popLast()
    }
}

let N = Int(readLine()!)!
var q = AnotherQueue<Int>()

for i in 1...N {
    q.enqueue(i)
}

while q.count != 1 {
    q.dequeue()
    
    q.enqueue(q.dequeue()!)
}

print(q.front!)
