//
//  약수의합.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/17.
//

import Foundation

func solution(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    
    var sum = 0
    
    for i in 1...n {
        if n % i == 0 {
            sum += i
        }
    }
    return sum
}
