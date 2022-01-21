//  숫자의 개수
//  2577.swift
//  2577
//
//  Created by 안상희 on 2021/07/23.
//

import Foundation

var a = Int(readLine()!)!
var b = Int(readLine()!)!
var c = Int(readLine()!)!

var result = a * b * c

var arr: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

while result != 0 {
    arr[result % 10] += 1
    result /= 10
}

for i in 0...(arr.count - 1) {
    print(arr[i])
}
