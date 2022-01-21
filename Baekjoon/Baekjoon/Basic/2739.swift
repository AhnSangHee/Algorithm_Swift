//  구구단
//  2739.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var num = Int(readLine()!)!

for i in num ..< num + 1 {
    for j in 1...9 {
        print("\(i) * \(j) = \(i * j)")
    }
}
