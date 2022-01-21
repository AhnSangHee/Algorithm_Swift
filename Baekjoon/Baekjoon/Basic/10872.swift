//  팩토리얼
//  10872.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/29.
//

import Foundation

var N = Int(readLine()!)!

func factorial(_ number: Int) -> Int {
    if number <= 1 {
        return 1
    }
    return (number * factorial(number - 1))
}

print(factorial(N))
