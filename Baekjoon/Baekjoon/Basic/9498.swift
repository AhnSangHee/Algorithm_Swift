//  시험 성적
//  9498.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/09.
//

import Foundation

var score = Int(readLine()!)!

if score >= 90 {
    print("A")
} else if score >= 80 {
    print("B")
} else if score >= 70 {
    print("C")
} else if score >= 60 {
    print("D")
} else {
    print("F")
}
