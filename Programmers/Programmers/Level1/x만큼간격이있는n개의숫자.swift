//
//  x만큼간격이있는n개의숫자.swift
//  x만큼간격이있는n개의숫자
//
//  Created by 안상희 on 2021/09/01.
//

import Foundation

// 내 풀이
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var ans = [Int64]()

    for i in 1...n {
        ans.append(Int64(x * i))
    }

    return ans
}


// 다른 풀이
func solution(_ x:Int, _ n:Int) -> [Int64] { return Array(1...n).map { Int64($0 * x) } }
