//  직각삼각형
//  4153.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    
    if input[0] == input[1], input[1] == input[2], input[0] == 0 {
        break
    }
    
    if input[2] * input[2] == input[0] * input[0] + input[1] * input[1] {
        print("right")
    } else {
        print("wrong")
    }
}
