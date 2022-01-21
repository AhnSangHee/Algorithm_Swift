//
//  직사각형_별찍기.swift
//  직사각형_별찍기
//
//  Created by 안상희 on 2021/09/01.
//

import Foundation

// 내 풀이
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 0 ..< b {
    for _ in 0 ..< a {
        print("*", terminator: "")
    }
    print("")
}


// 다른 풀이
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1]) for _ in 0 ..< b { print(Array(repeating: "*", count: a).joined()) }
