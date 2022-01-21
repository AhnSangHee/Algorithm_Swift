//  한수
//  1065.swift
//  1065
//
//  Created by 안상희 on 2021/07/24.
//

import Foundation

var N = Int(readLine()!)!
var count = 0

func solution(number: Int) -> Int {
    if number < 100 {
        return number
    } else {
        for i in 100 ... number {
            let first = i / 100
            let second = (i / 10) % 10
            let third = i % 10

            if second - first == third - second {
                count += 1
            }
        }
        
        return count + 99
    }
}

print(solution(number: N))
