//
//  콜라스추측.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/31.
//

import Foundation

func solution(_ num:Int) -> Int {
    var count = 500
    var number = num
    var answer = 0
    
    if num == 1 {
        return 0
    }
    
    while count != 0 {
        if number.isMultiple(of: 2) {
            number /= 2
        } else {
            number = number * 3 + 1
        }
        count -= 1
        answer += 1
        
        if number == 1 {
            break
        }
    }
    
    if count == 0 {
        return -1
    }
    
    return answer
}
