//
//  숫자문자열과영단어.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/28.
//

import Foundation

func solution(_ s: String) -> Int {
    let number = [(0, "zero"), (1, "one"), (2, "two"), (3, "three"), (4, "four"), (5, "five"), (6, "six"), (7, "seven"), (8, "eight"), (9, "nine")]
    
    var str = s
    for i in 0..<number.count {
        if str.contains(number[i].1) {
            str = str.replacingOccurrences(of: number[i].1, with: "\(number[i].0)")
        }
    }
    return Int(str)!
}



func anotherSolution(_ s: String) -> Int {
    var str = s
    var ans = str.replacingOccurrences(of: "zero", with: "0")
        .replacingOccurrences(of: "one", with: "1")
        .replacingOccurrences(of: "two", with: "2")
        .replacingOccurrences(of: "three", with: "3")
        .replacingOccurrences(of: "four", with: "4")
        .replacingOccurrences(of: "five", with: "5")
        .replacingOccurrences(of: "six", with: "6")
        .replacingOccurrences(of: "seven", with: "7")
        .replacingOccurrences(of: "eight", with: "8")
        .replacingOccurrences(of: "nine", with: "9")
    return Int(ans)!
}
