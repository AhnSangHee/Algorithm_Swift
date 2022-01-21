//  A/B
//  1008.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/08.
//

import Foundation

// # Solution 1.
//var nums = readLine()
//
//if let num = nums {
//    let arr = num.components(separatedBy: " ").map {
//        Double($0)!
//    }
//
//    print(arr[0] / arr[1])
//}


// # Solution 2.
var nums = readLine()!.components(separatedBy: " ").map { Double($0)!}

print(nums[0] / nums[1])
