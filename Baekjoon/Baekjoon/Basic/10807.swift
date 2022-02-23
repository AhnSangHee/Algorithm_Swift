//  개수 세기
//  10807.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/23.
//

import Foundation

let N = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = Int(readLine()!)!

var answer = 0
for num in nums {
    if num == v {
        answer += 1
    }
}

print(answer)
