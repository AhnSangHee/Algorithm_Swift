//
//  약수의개수와덧셈.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/04.
//

import Foundation

func solution(_ left: Int, _ right: Int) -> Int {
    var sum = 0
    
    for i in left...right {
        var cnt = 0
        for j in 1...i {
            if i % j == 0 {
                cnt += 1
            }
        }
        
        if cnt % 2 == 0 {
            sum += i
        } else {
            sum -= i
        }
    }
    return sum
}
