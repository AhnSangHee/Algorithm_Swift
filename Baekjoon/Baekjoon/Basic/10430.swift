//  나머지
//  10430.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/08.
//

import Foundation

var nums = readLine()!.components(separatedBy: " ").map { Int($0)! }

//var a = nums[0]
var a = nums[nums.startIndex]
var b = nums[nums.index(after: nums.startIndex)]
var c = nums[nums.index(before: nums.endIndex)]

print((a + b) % c)
print(((a % c) + (b % c)) % c)
print((a * b) % c)
print(((a % c) * (b % c)) % c)
