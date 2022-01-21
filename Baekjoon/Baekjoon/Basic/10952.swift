//  A+B - 5
//  10952.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var a: Int
var b: Int
repeat {
    let nums = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    a = nums[0]
    b = nums[1]

    if (a == 0 && b == 0) {
        exit(0)
    }
    print(a + b)
} while (a != 0 && b != 0)
