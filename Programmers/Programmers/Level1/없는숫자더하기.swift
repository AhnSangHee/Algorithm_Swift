//
//  없는숫자더하기.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/28.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var num = [Bool](repeating: false, count: 10)
    
    for i in 0..<numbers.count {
        for j in 0...9 {
            if numbers[i] == j {
                num[j] = true
            }
        }
    }
    
    var sum = 0
    for i in 0..<num.count {
        if num[i] == false {
            sum += i
        }
    }
    
    return sum
}


func anotherSolution(_ numbers:[Int]) -> Int {
    return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
}
