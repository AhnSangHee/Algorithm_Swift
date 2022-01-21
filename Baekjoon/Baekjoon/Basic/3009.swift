//  네 번째 점
//  3009.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let a1 = input1[0]
let b1 = input1[1]

let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let a2 = input2[0]
let b2 = input2[1]

let input3 = readLine()!.split(separator: " ").map { Int($0)! }
let a3 = input3[0]
let b3 = input3[1]

var a4: Int
var b4: Int

if a1 == a2 {
    a4 = a3
} else if a1 == a3 {
    a4 = a2
} else {
    a4 = a1
}

if b1 == b2 {
    b4 = b3
} else if b1 == b3 {
    b4 = b2
} else {
    b4 = b1
}

print(a4, b4)
