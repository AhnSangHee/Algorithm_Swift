//  X보다 작은 수
//  10871.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let n = input[0]
let x = input[1]

let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }

for i in 0...nums.count - 1 {
    if (nums[i] < x) {
        print("\(nums[i])", terminator: " ")
    }
}
