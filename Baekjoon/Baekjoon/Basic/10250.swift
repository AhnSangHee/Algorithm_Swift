//  ACM 호텔
//  10250.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/26.
//

import Foundation

var testcase = Int(readLine()!)!
var floor: Int
var roomNum: Int

while testcase != 0 {
    let num = readLine()!.split(separator: " ").map { Int($0)! }
    
    let H = num[0]
    let W = num[1]
    let N = num[2]
    
    if N % H == 0 {
        floor = H
        roomNum = N / H
    } else {
        floor = N % H
        roomNum = N / H + 1
    }
    
    if roomNum >= 10 {
        print("\(floor)\(roomNum)")
    } else {
        print("\(floor)0\(roomNum)")
    }
    
    testcase -= 1
}
