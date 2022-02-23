//  두 수의 합
//  3273.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/23.
//

import Foundation

let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = Int(readLine()!)!

nums.sort()

var arr = [Int](repeating: 0, count: nums.max()! + 1)
var ans = 0
for num in nums {
    arr[num] = 1
}

for i in 1..<arr.count / 2 {
    if arr[i] == 1 && arr[x - i] == 1 {
        ans += 1
    }
}

print(ans)
