//  손익분기점
//  1712.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/25.
//

import Foundation

let num = readLine()!.split(separator: " ").map { Int($0)! }

let A = num[0]
let B = num[1]
let C = num[2]

var ans: Int

if B >= C {
    print(-1)
    ans = -1
} else {
    print((A / (C - B)) + 1)
}
