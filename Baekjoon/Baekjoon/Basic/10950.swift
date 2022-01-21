//  A+B - 3
//  10950.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var num = Int(readLine()!)!

for i in 1...num {
    var nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
    print(nums[0] + nums[1])
}
