//
//  실패율.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/01.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var result = [(Int, Double)]()
    for i in 0..<N {
        result.append((i + 1, 0.0))
    }
    
    let userState = stages.sorted() // 1 2 2 2 3 3 4 6
    var userCount = stages.count // 스테이지를 플레이한 유저 수 (아직 해당 스테이지를 진행 중인 유저도 포함)
    var currentStageUserCount = 0 // 해당 스테이지에 아직 머물러 있는 유저 수
    var stateIndex = 0 // userState 배열에서 사용할 인덱스
    var resultIndex = 0 // result 배열에서 사용할 인덱스
    
    for i in 1...N { // 스테이지 체크
        for j in stateIndex..<stages.count {
            if userState[j] == i {
                currentStageUserCount += 1
                stateIndex += 1
            }
        }
        
        if currentStageUserCount == 0 {
            result[resultIndex].1 = 0
        } else {
            result[resultIndex].1 = Double(currentStageUserCount) / Double(userCount)
        }
        
        userCount -= currentStageUserCount // 유저 수 구하기
        resultIndex += 1 // 다음 스테이지
        currentStageUserCount = 0 // 초기화
    }

    return result.sorted { $0.1 > $1.1 }.map { $0.0 }
}
