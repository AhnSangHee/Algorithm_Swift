//  평균
//  1546.swift
//  1546
//
//  Created by 안상희 on 2021/07/23.
//

import Foundation

var N = Double(readLine()!)!

var scoreList = readLine()!.components(separatedBy: " ").map { (value: String) -> Double in
    Double(value)!
}

scoreList.sort(by: >) // 제일 큰 수부터 정렬

var M = scoreList[0]
var ans: Double = 0

for i in 0...scoreList.count - 1 {
    scoreList[i] = (scoreList[i] / M) * 100
    ans += scoreList[i]
}

print(Double(ans / N))
