//  소수 찾기
//  1978.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/27.
//

import Foundation

let number = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }

var arr = [Int](repeating: 0, count: 1001)

for i in 2...1000 {
    arr[i] = i
}

for i in 1...1000 {
    if arr[i] == 0 {
        continue
    }
    
    for i in 2...1000 {
        if arr[i] == 0 {
            continue
        }
        
        var index = i * 2
        
        while index <= 1000 {
            arr[index] = 0
            
            index += i
        }
    }
}

var ans = 0

for i in 0..<numbers.count {
    if arr[numbers[i]] != 0 {
        ans += 1
    }
}

print(ans)
