//  숫자의 합
//  11720.swift
//  11720
//
//  Created by 안상희 on 2021/08/28.
//

import Foundation

var N = Int(readLine()!)!
var nums = [Int]()

readLine()!.forEach { nums.append(Int(String($0))!)}

print(nums.reduce(0, +))
