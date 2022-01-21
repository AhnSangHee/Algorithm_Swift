//  유레카 이론
//  10448.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/09.
//

import Foundation

var T = Int(readLine()!)!

var arr = [Int]()

// 삼각수 구하기
for i in 1...50 {
    arr.append((i * (i + 1) / 2))
}

while T != 0 {
    let K = Int(readLine()!)!
    
    var b = false
    
    for i in 0..<50 {
        if b {
            break
        }
        for j in 0..<50 {
            if b {
                break
            }
            for k in 0..<50 {
                if arr[i] + arr[j] + arr[k] == K { // 3개의 삼각수의 합으로 표현 가능
                    b = true
                    print("1")
                    break
                }
            }
        }
    }
    
    if !b {
        print("0")
    }
    
    T -= 1
}
