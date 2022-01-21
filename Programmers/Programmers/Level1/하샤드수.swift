//
//  하샤드수.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/11.
//

import Foundation

func solution(_ x:Int) -> Bool {
    var num = x
    var sum = 0
    while num != 0 {
        sum += (num % 10)
        num /= 10
    }
    return x.isMultiple(of: sum)
}


// 다른 풀이
func solution(_ x:Int) -> Bool {
    return x % String(x).reduce(0) { $0 + Int(String($1))! } == 0
}
