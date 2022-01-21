//  부녀회장이 될테야
//  2775.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/26.
//

import Foundation

var testcase = Int(readLine()!)!

while testcase != 0 {
    var apartment : [[Int]] = Array(repeating: Array(repeating: 0, count: 15), count: 15)
    
    // 0층 초기화
    for i in 1...14 {
        apartment[0][i] = i
    }
    
    for i in 1...14 {
        var total = 0
        for j in 1...14 {
            apartment[i][j] += apartment[i-1][j] + total
            total += apartment[i-1][j]
        }
    }
    
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    print("\(apartment[k][n])")
    
    testcase -= 1
}
