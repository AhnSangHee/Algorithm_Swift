//  소수
//  2581.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/27.
//

import Foundation

var number = 100000
var arr = Array(0...number)

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

let M = Int(readLine()!)!
let N = Int(readLine()!)!

var total = 0
for i in M...N {
    if arr[i] != 0 {
        total += arr[i]
    }
}

if total == 0 {
    print(-1)
} else {
    print(total)
    
    for i in M...N {
        if arr[i] != 0 {
            print(arr[i])
            break
        }
    }
}
