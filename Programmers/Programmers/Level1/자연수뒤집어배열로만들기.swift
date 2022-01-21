//
//  자연수뒤집어배열로만들기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/11.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    var num = Int(n)
    var arr = [Int]()
    
    while num != 0 {
        arr.append(num % 10)
        num /= 10
    }
    
    return arr
}
