//  소수 구하기
//  1929.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/27.
//

import Foundation

let numbers = readLine()!.split(separator: " ").map { Int($0)! }

let M = numbers[0]
let N = numbers[1]

var number = 1000000
var arr = [Int](repeating: 0, count: number + 1)

for i in 2...number {
    arr[i] = i
}

for i in 2...number {
    if arr[i] == 0 {
        continue
    }
    
    for j in stride(from: i * 2, through: number, by: i) {
        arr[j] = 0
    }
}

for i in M...N {
    if arr[i] != 0 {
        print(arr[i])
    }
}
