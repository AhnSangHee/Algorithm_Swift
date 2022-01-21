//  알람 시계
//  2884.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var times = readLine()!.components(separatedBy: " ").map { Int($0)! }
var h = times[0]
var m = times[1]

if m < 45 {
    if h == 0 {
        h = 23
    } else {
        h -= 1
    }
    m = m + 60 - 45
} else {
    m -= 45
}

print("\(h) \(m)")
