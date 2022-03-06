//  스택
//  10828.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/28.
//

import Foundation

let N = Int(readLine()!)!

var myStack = [Int]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    switch input[0] {
    case "push":
        myStack.append(Int(input[1])!)
    case "pop":
        myStack.isEmpty ? print(-1) : print(myStack.removeLast())
    case "size":
        print(myStack.count)
    case "empty":
        myStack.isEmpty ? print(1): print(0)
    default: // top
        myStack.isEmpty ? print(-1) : print(myStack.last!)
    }
}
