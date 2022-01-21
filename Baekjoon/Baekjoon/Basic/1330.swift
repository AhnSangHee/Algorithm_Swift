//  두 수 비교하기
//  1330.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/09.
//

import Foundation

var nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
var a = nums[0]
var b = nums[1]

if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
