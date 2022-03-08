//  소인수분해
//  11653.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

var num = Int(readLine()!)!
var i = 2
while num != 1 {
    while num % i == 0 {
        print(i)
        num /= i
    }
    i += 1
}
