//  벌집
//  2292.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/25.
//

import Foundation

let N = Int(readLine()!)!

var group = 1

if N == 1 {
    print(group)
} else {
    var num = 1
    while num < N {
        num += (6 * group)
        group += 1
    }
    print(group)
}
