//  방 번호
//  1475.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/22.
//

import Foundation

let N = readLine()!.map { Int(String($0))! }

var arr = [Int](repeating: 0, count: 10)
var countsOf6or9 = 0

for i in 0..<N.count {
    arr[N[i]] += 1
}

countsOf6or9 = (arr[6] + arr[9] + 1) / 2

arr[6] = countsOf6or9
arr[9] = countsOf6or9

print(arr.max()!)
