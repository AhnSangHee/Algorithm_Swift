//  베르트랑 공준
//  4948.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

var arr = [Int](repeating: 0, count: 246913)

for i in 2...246912 {
    arr[i] = i
}

for i in 2...246912 {
    for j in stride(from: i * 2, through: 246912, by: i) {
        arr[j] = 0
    }
}

while let input = Int(readLine()!), input != 0 {
    var count = 0
    for i in input+1...input*2 {
        if arr[i] != 0 {
            count += 1
        }
    }
    print(count)
}
