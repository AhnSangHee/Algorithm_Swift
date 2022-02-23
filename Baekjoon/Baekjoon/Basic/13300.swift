//  방 배정
//  13300.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let K = input[1]

var girls = [Int](repeating: 0, count: 7)
var boys = [Int](repeating: 0, count: 7)
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    // input[0]은 성별, input[1]은 학년 나타냄.
    if input[0] == 1 { // 남자
        boys[input[1]] += 1
    } else {
        girls[input[1]] += 1
    }
}

var answer = 0
for i in 1...6 {
    answer += (boys[i] / K) + (girls[i] / K)
    
    if boys[i] % K != 0 {
        answer += 1
    }
    
    if girls[i] % K != 0 {
        answer += 1
    }
}

print(answer)
