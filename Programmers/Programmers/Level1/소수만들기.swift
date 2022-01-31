//
//  소수만들기.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/29.
//

import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    for i in 0..<nums.count {
        for j in i..<nums.count {
            for k in j..<nums.count {
                if nums[i] == nums[j] || nums[i] == nums[k] || nums[j] == nums[k] { continue }
                
                let num = nums[i] + nums[j] + nums[k]
                if isDecimal(num: num) {
                    answer += 1
                }
            }
        }
    }
    return answer
}



func isDecimal(num: Int) -> Bool {
    // true이면 소수. false여야 소수가 아님.
    var arr = [Bool](repeating: true, count: num + 1)
    
    for i in 2...num {
        if arr[i] == false { continue }
        
        var index = i * 2
        
        while index <= num {
            arr[index] = false
            index += i
        }
    }
    
    return arr[num]
}
