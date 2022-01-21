//
//  음양더하기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/21.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0

    for i in 0..<signs.count {
        sum += signs[i] == true ? absolutes[i] : -absolutes[i]
    }
    
    return sum
}
