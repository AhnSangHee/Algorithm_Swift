//
//  프린터.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/09.
//

import Foundation

struct Queue<T> {
    private var list1: [T] = []
    private var list2: [T] = []
    
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
    
    var rear: T? {
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


func solution(_ priorities:[Int], _ location:Int) -> Int {
    var pq = priorities.sorted() // 중요도 저장
    var q = Queue<(Int, Int)>() // 문서의 중요도와 현재 인쇄 대기 목록에 놓여있는 순서 저장
    for i in 0..<priorities.count {
        q.enqueue((priorities[i], i))
    }
    
    var cnt = 0
    // 큐가 빌 때까지
    while !q.isEmpty {
        // 우선순위 배열의 젤 마지막 요소와 큐의 제일 앞에 있는 것이 일치하다면
        if pq.last! == q.front?.0 {
            if q.front?.1 == location {
                pq.removeLast()
                q.dequeue()
                cnt += 1
                return cnt
            }
            pq.removeLast()
            q.dequeue()
            cnt += 1
        } else {
            q.enqueue(q.front!)
            q.dequeue()
        }
    }
    
    return cnt
}
