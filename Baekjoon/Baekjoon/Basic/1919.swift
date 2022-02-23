//  애너그램 만들기
//  1919.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/23.
//

import Foundation

let a = readLine()!
let b = readLine()!

var aArr = [Int](repeating: 0, count: 26)
var bArr = [Int](repeating: 0, count: 26)
for char in a {
    aArr[Int(char.asciiValue!) - 97] += 1
}

for char in b {
    bArr[Int(char.asciiValue!) - 97] += 1
}

var count = 0
for i in 0..<26 {
    if aArr[i] != bArr[i] {
        count += abs(aArr[i] - bArr[i])
    }
}
print(count)
