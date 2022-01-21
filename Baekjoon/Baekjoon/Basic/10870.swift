//  피보나치 수 5
//  10870.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/02.
//

import Foundation

let N = Int(readLine()!)!

var ans = 0

func fibonacci(num: Int) -> Int {
    if num == 0 {
        return 0
    } else if num == 1 {
        return 1
    } else {
        return fibonacci(num: num - 1) + fibonacci(num: num - 2)
    }
}

ans = fibonacci(num: N)
print(ans)
