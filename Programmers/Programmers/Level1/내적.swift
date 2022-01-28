//
//  내적.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/28.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sum = 0
    for i in 0..<a.count {
        sum += a[i] * b[i]
    }
    return sum
}


func anotherSolution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).map(*).reduce(0, +)
}
