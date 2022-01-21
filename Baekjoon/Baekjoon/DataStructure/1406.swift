//
//  1406.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/25.
//

import Foundation

var left = Array(readLine()!)
let M = Int(readLine()!)!
var right = [Character]()

for _ in 0..<M {
    var command = readLine()!
    
    switch command {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
    case "D":
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B":
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(command.last!) // removeLast()로 하면 시간초과.
    }
}

print(String(left + right.reversed()))
