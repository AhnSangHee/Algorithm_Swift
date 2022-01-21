//  일곱 난쟁이
//  2309.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/09.
//

import Foundation

var arr = [Int]()

for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

let sum = arr.reduce(0, +) // 아홉 난쟁이 키의 총합
arr.sort()

func solution() {
    for i in 0..<9 {
        for j in 0..<9 {
            if i == j {
                continue
            }
            if (sum - arr[i] - arr[j] == 100) {
                for k in 0..<9 {
                    if k == i || k == j {
                        continue
                    }
                    print(arr[k])
                }
                return
            }
        }
    }
}

solution()
