//  베르트랑 공준
//  4948.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

var number = 246912
var arr = Array(0...number)
func solution() {
    arr[1] = 0

    for i in 2...number {
        if arr[i] == 0 {
            continue
        }
        
        for j in stride(from: i * 2, through: number, by: i) {
            arr[j] = 0
        }
    }
}
solution()

while let input = Int(readLine()!), input != 0 {
    var count = 0
    for i in input+1...input*2 {
        if arr[i] != 0 {
            count += 1
        }
    }
    print(count)
}

