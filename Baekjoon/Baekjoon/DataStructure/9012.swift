//  괄호
//  9012.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/29.
//

import Foundation

var num = Int(readLine()!)!

while num != 0 {
    let str = Array(readLine()!)

    var stack = ""
    
    var b = true
    for i in 0..<str.count {
        if str[i] == "(" {
            stack.append(str[i])
        } else {
            if !stack.isEmpty {
                stack.removeLast()
            } else {
                b = false
            }
        }
    }
    if !stack.isEmpty {
        b = false
    }
    if b {
        print("YES")
    } else {
        print("NO")
    }
    num -= 1
}
