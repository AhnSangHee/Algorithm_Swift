//  윤년
//  2753.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/09.
//

import Foundation

var year = Int(readLine()!)!

if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
    print("1")
} else {
    print("0")
}
