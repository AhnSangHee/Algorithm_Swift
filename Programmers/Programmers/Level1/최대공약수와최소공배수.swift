//
//  최대공약수와최소공배수.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/31.
//

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var ans = [Int]()
    
    // 최대 공약수
    for i in stride(from: min(n, m), through: 1, by: -1) {
        if n % i == 0 && m % i == 0 {
            ans.append(i)
            break
        }
    }
    
    // 최소 공배수
    for i in max(n, m)...n * m {
        if i % n == 0 && i % m == 0 {
            ans.append(i)
            break
        }
    }
    
    return ans
}



func anotherSolution(_ n:Int, _ m:Int) -> [Int] {
    var ans = [Int]()
    
    var a = n
    var b = m
    // 최대 공약수
    ans.append(GCD(x: &a, y: &b))
    
    a = n
    b = m
    // 최소 공배수
    ans.append(LCM(x: &a, y: &b))
    
    return ans
}


func GCD(x: inout Int, y: inout Int) -> Int {
    while y != 0 {
        let temp = x
        
        x = y
        y = temp % y
    }
    return x
}

func LCM(x: inout Int, y: inout Int) -> Int {
    return (x * y) / GCD(x: &x, y: &y)
}
