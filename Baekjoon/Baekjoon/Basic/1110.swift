//  더하기 사이클
//  1110.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var input = Int(readLine()!)!
var n = 0
var newNum = 0
var a = 0
var b = 0
var cnt = 0
var sum = 0

func compare(num: Int) -> Int {
    if num < 10 {
        a = 0
        b = num
        sum = a + b
        newNum = b * 10 + sum % 10
        cnt += 1
        
        if newNum == input {
            return cnt
        } else {
            compare(num: newNum)
        }
    } else {
        a = num / 10
        b = num % 10
        sum = a + b
        newNum = b * 10 + sum % 10
        cnt += 1
        
        if newNum == input {
            return cnt
        } else {
            compare(num: newNum)
        }
    }
    
    return 0
}

if input == 0 {
    print("1")
} else {
    while input != newNum {
        compare(num: input)
    }
    print(cnt)
}
