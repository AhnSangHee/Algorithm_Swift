//
//  체육복.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/06.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var clothes = [Int](repeating: 1, count: n)
    
    // 체육복 없는 학생
    for i in 0..<lost.count {
        clothes[lost[i] - 1] = 0
    }
    
    // 체육복 여벌 있는 학생
    for i in 0..<reserve.count {
        clothes[reserve[i] - 1] += 1
    }
    
    for i in 0..<clothes.count {
        if clothes[i] == 2 {
            if i == 0 {
                if clothes[i + 1] == 0 && (i + 1) != clothes.count {
                    clothes[i + 1] += 1
                    clothes[i] -= 1
                }
            }
            if i != 0 {
                if clothes[i - 1] == 0 {
                    clothes[i - 1] += 1
                    clothes[i] -= 1
                }
                
                // 앞 번호 학생을 빌려줬을 경우를 체크해야하므로 clothes[i] == 2인지 체크
                if (i + 1) != clothes.count && clothes[i + 1] == 0 && clothes[i] == 2 {
                    clothes[i + 1] += 1
                    clothes[i] -= 1
                }
            }
        }
    }
    
    var zeroCount = 0
    for i in clothes {
        if i == 0 {
            zeroCount += 1
        }
    }
    return clothes.count - zeroCount
}
