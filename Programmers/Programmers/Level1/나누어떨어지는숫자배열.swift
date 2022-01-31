//
//  나누어떨어지는숫자배열.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/31.
//

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let ans = arr.filter { $0 % divisor == 0 }.sorted()
    return ans.isEmpty ? [-1] : ans
}
