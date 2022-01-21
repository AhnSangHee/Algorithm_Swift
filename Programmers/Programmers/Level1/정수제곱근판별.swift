//
//  정수제곱근판별.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/11.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    var num = Int(n)
    
    for i in 1...num {
        if num == (i * i) {
            return Int64((i + 1) * (i + 1))
        }
    }
    return -1
}
