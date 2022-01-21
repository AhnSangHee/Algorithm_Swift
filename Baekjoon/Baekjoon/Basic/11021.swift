//  A+B - 7
//  11021.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var num = Int(readLine()!)!

for i in 1...num {
    let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let a = nums[0]
    let b = nums[1]
    
    print("Case #\(i): \(a+b)")
}
