//
//  소수찾기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/11.
//

import Foundation

func solution(_ n:Int) -> Int {
    var arr = [Int](repeating: 0, count: n + 1)
    
    for i in 2...n {
        arr[i] = i
    }
    
    for i in 2...n {
        if arr[i] == 0 {
            continue
        }
        
        var idx = i * 2
        while idx <= n {
            arr[idx] = 0
            idx += i
        }
    }
    
    var cnt = 0
    for i in 2...n {
        if arr[i] != 0 {
            cnt += 1
        }
    }
    
    return cnt
}
