//  스택 수열
//  1874.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/08.
//

import Foundation

let n = Int(readLine()!)!
var numberArr = [Int]()
for _ in 0..<n {
    numberArr.append(Int(readLine()!)!)
}
var stack = [Int]()
var answer = [String]()

var j = 0 // numberArr 탐색용 인덱스
for i in 0..<n {
    stack.append(i + 1)
    answer.append("+")
    
    if stack.last! != numberArr[j] { continue }
    else {
        while !stack.isEmpty && stack.last! == numberArr[j] {
            answer.append("-") // 같을 경우 stack에서 빼기
            stack.removeLast()
            j += 1
        }
    }
}

if stack.isEmpty {
    for answer in answer {
        print(answer)
    }
} else {
    print("NO")
}
