//  소수 구하기
//  11653.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

var num = Int(readLine()!)!

while num != 1 {
    for i in 2...num {
        while num % i == 0 { // 나누어떨어진다면 계속 나누기
            print(i)
            num /= i
        }
    }
}
