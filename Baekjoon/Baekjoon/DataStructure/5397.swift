//  키로거
//  5397.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/29.
//

import Foundation

var num = Int(readLine()!)!

while num != 0 {
    let str = Array(readLine()!)

    var left = [String]()
    var right = [String]()

    for i in 0..<str.count {
        if str[i] == "<" {
            if !left.isEmpty {
                right.append(left.removeLast())
            }
        } else if str[i] == ">" {
            if !right.isEmpty {
                left.append(right.removeLast())
            }
        } else if str[i] == "-" {
            if !left.isEmpty {
                left.removeLast()
            }
        } else {
            left.append(String(str[i]))
        }
    }

    let ans = left + right.reversed()
    print(ans.joined())
    num -= 1
}
