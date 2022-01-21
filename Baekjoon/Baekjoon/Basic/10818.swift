//  최소, 최대
//  10818.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/11.
//

import Foundation

var input = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
print(arr.min()!, arr.max()!)
