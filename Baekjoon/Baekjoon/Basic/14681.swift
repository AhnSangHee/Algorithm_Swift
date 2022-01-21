//  사분면 고르기
//  14681.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/09.
//

import Foundation

var x = Int(readLine()!)!
var y = Int(readLine()!)!

if x > 0 && y > 0 {
    print("1")
} else if x < 0 && y > 0 {
    print("2")
} else if x < 0 && y < 0 {
    print("3")
} else if x > 0 && y < 0 {
    print("4")
}
