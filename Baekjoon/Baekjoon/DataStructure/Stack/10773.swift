//  제로
//  10773.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/07.
//

import Foundation

let K = Int(readLine()!)!
var stack = [Int]()
for _ in 0..<K {
    let num = Int(readLine()!)!
    if num == 0 && !stack.isEmpty {
        stack.removeLast()
    } else {
        stack.append(num)
    }
}
print(stack.reduce(0, +))
