//
//  정수내림차순으로배치하기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/10.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    var arr = [Int]()
    
    var num = Int(n)
    
    while num != 0 {
        arr.append(num % 10)
        num /= 10
    }
    
    arr.sort()
    arr.reverse()
    
    var str = ""
    for i in 0..<arr.count {
        str += String(arr[i])
    }
    
    return Int64(str)!
}


// 다른 풀이
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted{ $0 > $1 }))!
}
