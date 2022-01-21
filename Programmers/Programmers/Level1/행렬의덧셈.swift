//
//  행렬의덧셈.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/14.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let arrCount = arr1.count
    let elementCount = arr1[0].count
    
    let elementArr = [Int](repeating: 0, count: elementCount)
    var ans = [[Int]](repeating: elementArr, count: arrCount)
    
    for i in 0..<arrCount {
        for j in 0..<elementCount {
            ans[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return ans
}
