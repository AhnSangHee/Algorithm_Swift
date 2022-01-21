//  최댓값
//  2562.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/11.
//

import Foundation

var arr = [Int]()

for _ in 1...9 {
    var input = Int(readLine()!)!
    arr.append(input)
}

var maxValue = arr.max()!
print(maxValue)

for i in 0...8 {
    if arr[i] == maxValue {
        print(i + 1)
        break
    }
}
