//
//  평균구하기.swift
//  평균구하기
//
//  Created by 안상희 on 2021/09/01.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0,+)) / Double(arr.count)
}
