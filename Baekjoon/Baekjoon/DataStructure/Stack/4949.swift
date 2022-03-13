//  균형잡힌 세상
//  4949.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/12.
//

import Foundation

while let input = readLine(), input != "." {
    let arr = input.map { String($0) }
    var stack = [String]()
    
    for str in arr {
        if str == "(" || str == "[" {
            stack.append(str)
        } else if str == ")" {
            if !stack.isEmpty && stack.last! == "(" {
                stack.removeLast()
            } else {
                stack.append(str)
            }
        } else if str == "]" {
            if !stack.isEmpty && stack.last! == "[" {
                stack.removeLast()
            } else {
                stack.append(str)
            }
        }
    }
    
    stack.isEmpty ? print("yes") : print("no")
}
