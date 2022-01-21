//
//  두개뽑아서더하기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/22.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let arr = numbers.sorted()
    
    var ans = [Int]()
    
    for i in stride(from: 0, to: arr.count, by: 1) {
        for j in stride(from: i, to: arr.count, by: 1) {
            if i == j {
                continue
            }
            if !ans.contains(arr[i] + arr[j]) {
                ans.append(arr[i] + arr[j])
            }
        }
    }
    ans.sort()
    
    return ans
}
