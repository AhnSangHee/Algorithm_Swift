//  별 찍기 - 2
//  2439.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

var num = Int(readLine()!)!

for i in 1...num {
    let j = 1
    if i != num {
        for _ in i-1 ... num-2 {
            print(" ", terminator: "")
        }
    }
    for _ in j ... i {
        print("*", terminator: "")
    }
    print("")
}
