//  나머지
//  3052.swift
//  3052
//
//  Created by 안상희 on 2021/07/23.
//

import Foundation

var arr = [Int](repeating: 0, count: 42)
var cnt = 0

for _ in 0...9 {
    let num = Int(readLine()!)!
    arr[num % 42] += 1
}

for i in 0...(arr.count - 1) {
    if arr[i] != 0 {
        cnt += 1
    }
}

print(cnt)
