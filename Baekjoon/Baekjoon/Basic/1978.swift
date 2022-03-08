//  소수 찾기
//  1978.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/27.
//

import Foundation

var number = 1000
var arr = Array(0...1000)

func solution() {
    arr[1] = 0

    for i in 2...number {
        if arr[i] == 0 {
            continue
        }
        
        var index = i * 2
        while index <= number {
            arr[index] = 0
            index += i
        }
    }
}
solution()

let input = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }

var answer = 0
for num in numbers {
    if arr[num] != 0 {
        answer += 1
    }
}
print(answer)
