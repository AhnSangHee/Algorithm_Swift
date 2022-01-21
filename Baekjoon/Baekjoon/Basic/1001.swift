//  A-B
//  1001.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/08.
//

import Foundation

var nums = readLine()

if let num = nums {
    let arr = num.components(separatedBy: " ").map { (value: String) -> Int in
        Int(value)!
    }
    
    print(arr[0] - arr[1])
}
