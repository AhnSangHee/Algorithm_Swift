//  평균은 넘겠지
//  4344.swift
//  4344
//
//  Created by 안상희 on 2021/07/23.
//

import Foundation

var C = Int(readLine()!)!

repeat {
    let list = readLine()!.components(separatedBy: " ").map { (value: String) -> Int in
        Int(value)!
    }
    
    var sum = 0
    for i in 1...list.count - 1 {
        sum += list[i]
    }
    let avg = sum / list[0] // 평균 구하기
    
    var overAvg = 0
    for i in 1...list.count - 1 {
        if list[i] > avg {
            overAvg += 1 // 평균 넘는 학생 수 세기
        }
    }
    
    let rate = (Double(overAvg) / Double(list[0])) * 100
    
    print("\(String(format: "%.3f", rate))%")

    C -= 1
} while C != 0
