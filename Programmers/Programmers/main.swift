//
//  main.swift
//  Programmers
//
//  Created by 안상희 on 2021/09/01.
//

import Foundation

////print("Hello, World!")
//
////for i in stride(from: 0, to: 6, by: 1) { // to는 마지막 숫자 포함 안시켜.
////    print(i) // 0 1 2 3 4 5
////}
////
////for i in stride(from: 0, through: 6, by: 1) { // through는 마지막 숫자 포함 시켜.
////    print(i) // 0 1 2 3 4 5 6
////}
//
//
//
////func solution(_ d:[Int], _ budget:Int) -> Int {
////    var total = 0
////    var cnt = 0
////    for i in 0..<d.count {
////        total += d[i]
////        cnt += 1
////        if total == budget {
////            return cnt
////        }
////    }
////    return 0
////}
//
//
//func solution(_ d:[Int], _ budget:Int) -> Int {
//    while true {
//        var total = 0
//        var ans = 0
//
//        if total == budget {
//            return ans
//        }
//
//        for i in 0..<d.count {
//            for j in (i+1)..<d.count {
//                total += d[j]
//
//                if total > budget {
//                    total = 0
//                    ans = 0
//                    continue
//                } else if total == budget {
//                    ans += 1
//                    return ans
//                }
//                ans += 1
//            }
//        }
//    }
//    return 0
//}
//
//
//var a1 = [1,3,2,5,4]
///*
// [1,3,2,5,4]    9    3
// [2,2,3,3]    10    4
// */
//
//var aaa = solution(a1, 10)
//print(aaa)




//var st = "aasdfasdfa1"
//
//st.replacingOccurrences(of: "aa", with: "a")
//print(st)




//let asciiCode = 65
//let ch: Character = "Z"
//let unicodeScalar = ch.unicodeScalars.first!.value
//print(unicodeScalar) //
//let asciiStr = Character(UnicodeScalar(asciiCode)!) // A
////print(asciiStr)
//
//
//let upperCased = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
//let lowerCase = "abcdefghijklmnopqrstuvwxyz"
//
//var word = Array("Hello World")

//struct Queue<T> {
//    private var list1: [T] = []
//    private var list2: [T] = []
//
//    var isEmpty: Bool {
//        return list1.isEmpty && list2.isEmpty
//    }
//
//    var count: Int {
//        return list1.count + list2.count
//    }
//
//    var front: T? {
//        if list2.isEmpty {
//            return list1.first
//        } else {
//            return list2.last
//        }
//    }
//
//    var rear: T? {
//        if list2.isEmpty {
//            return list1.last
//        } else {
//            return list2.first
//        }
//    }
//
//    mutating func enqueue(_ element: T) {
//        list1.append(element)
//    }
//
//    mutating func dequeue() -> T?  {
//        // list2가 비어있을 때에만 list1의 요소들을 reversed()로 복사해옴
//        if list2.isEmpty {
//            list2 = list1.reversed()
//            list1.removeAll()
//        }
//        return list2.popLast()
//    }
//}
//
//
//func solution(_ priorities:[Int], _ location:Int) -> Int {
//    var pq = priorities.sorted()
//
//    var q = Queue<(Int, Int)>()
//    for i in 0..<priorities.count {
//        q.enqueue((priorities[i], i))
//    }
//
//    print(type(of: q))
//    var max = priorities.max()!
//
//    var cnt = 0
//    // 큐가 비어있지 않는 동안에
//    while !q.isEmpty {
//        // 우선순위 배열의 젤 마지막 요소와 큐의 제일 앞에 있는 것이 일치하다면
//        if pq.last! == q.front?.0 {
//            if q.front?.1 == location {
//                pq.removeLast()
//                q.dequeue()
//                cnt += 1
//                return cnt
//            }
//            pq.removeLast()
//            q.dequeue()
//            cnt += 1
//        } else {
//            q.enqueue(q.front!)
//            q.dequeue()
//        }
//    }
//
//    return cnt
//}
//
//print(solution([2, 1, 3, 2], 2))
//print(solution([1, 1, 9, 1, 1, 1], 0))

//
//let names: Set = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
//var shorterIndices: [Set<String>.Index] = []
//for (i, name) in zip(names.indices, names) {
//    print(names.indices)
//    if name.count <= 5 {
//        shorterIndices.append(i)
//    }
//}
//print(type(of: shorterIndices))


func solution(_ numbers:[Int]) -> String {
    
    return ""
}

print(solution([6, 10, 2]))
print(solution([3, 30, 34, 5, 9]))
