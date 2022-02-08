//
//  기능개발.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/08.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let functionCount = progresses.count
    
    // 남은 기능 퍼센트 나타내는 배열
    var leftPercent = [Int](repeating: 0, count: functionCount)
    for i in 0..<functionCount {
        leftPercent[i] = 100 - progresses[i]
    }
    
    // 작업 소요일 나타내는 배열
    var dayList = [Int](repeating: 0, count: functionCount)
    for i in 0..<functionCount {
        let quotient = leftPercent[i] / speeds[i]
        var modulo = leftPercent[i] % speeds[i]
        
        if modulo != 0 {
            modulo = 1
        }
        
        dayList[i] = quotient + modulo
    }
    
    var top = dayList[0]
    var answer = [Int]()
    var count = 1 // 첫번째 수 포함
    for i in 1..<functionCount {
        if dayList[i] > top { // 작업 소요일이 top보다 크면 pop 멈추고, 그 전까지 카운트했던 요소 수 answer에 추가
            answer.append(count)
            
            // count는 다시 초기화하고, top 변경시켜주기
            count = 1
            top = dayList[i]
        } else {
            // 작업 소요일이 top보다 작거나 같으면 그냥 pop
            count += 1
        }
    }
    answer.append(count)
    
    return answer
}
