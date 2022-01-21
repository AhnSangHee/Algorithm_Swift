//  별 찍기 - 1
//  2438.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var num = Int(readLine()!)!

for i in 1...num {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}
