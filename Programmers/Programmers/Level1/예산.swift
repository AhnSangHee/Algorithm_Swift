//
//  예산.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/31.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let arr = d.sorted()
    
    var sum = 0
    var cnt = 0
    
    for i in 0..<arr.count {
        sum += arr[i]
        
        if sum > budget { break }
        
        cnt += 1
    }
    
    return cnt
}
