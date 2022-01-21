//
//  제일작은수제거하기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/10.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    } else {
        var myArr = arr
        var minValue = arr[0]
        var minIndex = 0
        for i in 1..<arr.count {
            if minValue > arr[i] {
                minValue = arr[i]
                minIndex = i
            }
        }
        myArr.remove(at: minIndex)
        return myArr
    }
}
