//
//  두정수사이의합.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/11.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum = 0
    var minVal: Int
    var maxVal: Int
    if a > b {
        minVal = b
        maxVal = a
    } else {
        minVal = a
        maxVal = b
    }
    for i in minVal...maxVal {
        sum += i
    }
    return Int64(sum)
}

// 다른 풀이
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
}
