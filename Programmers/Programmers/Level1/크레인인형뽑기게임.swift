//
//  크레인인형뽑기게임.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/21.
//

import Foundation


func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    // 뽑은 인형을 담을 배열
    var arr = [Int]()
    
    // 정답
    var ans = 0
    
    var myBoard = board
    for index in moves {
        let idx = index - 1 // 크레인 위치 인덱스는 0이 아닌 1부터 시작하므로 1을 빼준다.
        
        for i in 0..<board.count {
            if myBoard[i][idx] != 0 {
                // 인형 담을 배열이 비어있지 않을 경우, 인형 배열의 마지막 요소랑 현재 배열 요소 같은지 확인
                if !arr.isEmpty {
                    if arr.last! == myBoard[i][idx] {
                        // 같다면 정답에 2개 추가하고, 인형에서 삭제
                        ans += 2
                        arr.removeLast()
                    } else {
                        arr.append(myBoard[i][idx])
                    }
                } else {
                    arr.append(myBoard[i][idx])
                }
                
                myBoard[i][idx] = 0
                break
            }
        }
    }
    return ans
}
