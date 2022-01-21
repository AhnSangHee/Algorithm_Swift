//  상수
//  2908.swift
//  2908
//
//  Created by 안상희 on 2021/08/31.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)!}

for i in 0...1 {
    let first = input[i] / 100
    let second = (input[i] / 10) % 10
    let third = input[i] % 10
    
    input[i] = third * 100 + second * 10 + first
}

print(input.max()!)
