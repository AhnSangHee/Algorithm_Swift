//
//  로또의최고순위와최저순위.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/04.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var correctCount = 0
    var zeroCount = 0
    for i in 0..<lottos.count {
        if win_nums.contains(lottos[i]) {
            correctCount += 1
        }
        
        if lottos[i] == 0 {
            zeroCount += 1
        }
    }
    
    // 모든 번호가 당첨일 경우
    if correctCount == lottos.count {
        return [1, 1]
    }
    
    if zeroCount == 6 { // 모든 번호를 모르는 경우
        return [1, 6]
    } else if zeroCount == 0 && correctCount == 0 { // 모든 번호를 알고 있고, 전부 맞지 않았을 경우
        return [6, 6]
    }
    
    // 최고 순위, 최저 순위
    return [7 - correctCount - zeroCount, 7 - correctCount]
}
