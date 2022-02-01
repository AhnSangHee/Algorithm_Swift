//
//  3진법뒤집기.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/01.
//

import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    var threeArr = [Int]()
    
    while num != 0 {
        threeArr.append(num % 3)
        
        num /= 3
    }
    threeArr.reverse()
    
    var ans = 0
    var n = 1
    for i in 0..<threeArr.count {
        ans += threeArr[i] * n
        n *= 3
    }
    return ans
}


func anotherSolution(_ n:Int) -> Int {
    let flipToThree = String(n,radix: 3)
    return Int(String(flipToThree.reversed()),radix:3)!
}
