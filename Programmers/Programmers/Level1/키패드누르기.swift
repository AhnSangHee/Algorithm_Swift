//
//  키패드누르기.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/06.
//

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    let keypad = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"], ["*", "0", "#"]]
    
    let leftOnly = [1, 4, 7] // 왼손 엄지손가락만 가능
    let rightOnly = [3, 6, 9] // 오른손 엄지손가락만 가능
    
    var leftPosition = (3, 0) // 최초 왼손 엄지 손가락 시작 위치
    var rightPosition = (3, 2) // 최초 오른손 엄지 손가락 시작 위치
    
    for num in numbers {
        // 1, 4, 7은 왼손 엄지손가락만 가능
        if leftOnly.contains(num) {
            result.append("L")
            
            // 왼손 엄지손가락 이동시켜주기
            MoveLeftHand: for i in 0..<4 {
                for j in 0..<3 {
                    if let targetNum = Int(keypad[i][j]), targetNum == num {
                        leftPosition = (i, j) // 위치 저장
                        break MoveLeftHand
                    }
                }
            }
            continue
        }
        
        // 3, 6, 9는 오른손 엄지손가락만 가능
        if rightOnly.contains(num) {
            result.append("R")
            
            // 오른손 엄지손가락 이동시켜주기
            MoveRightHand: for i in 0..<4 {
                for j in 0..<3 {
                    if let targetNum = Int(keypad[i][j]), targetNum == num {
                        rightPosition = (i, j) // 위치 저장
                        break MoveRightHand
                    }
                }
            }
            continue
        }
        
        // 그 외의 경우
        // target의 인덱스 구하기
        var targetIndex = (0, 0)
        GetTarget: for i in 0..<4 {
            for j in 0..<3 {
                if let targetNum = Int(keypad[i][j]), targetNum == num {
                    targetIndex.0 = i
                    targetIndex.1 = j
                    break GetTarget
                }
            }
        }
        
        // left, right에서 target까지의 거리 구하기
        let leftToTarget = abs(leftPosition.0 - targetIndex.0) + abs(leftPosition.1 - targetIndex.1)
        let rightToTarget = abs(rightPosition.0 - targetIndex.0) + abs(rightPosition.1 - targetIndex.1)
        
        if leftToTarget < rightToTarget {
            // 왼쪽 엄지손가락 이동시키기
            leftPosition = (targetIndex.0, targetIndex.1)
            result.append("L")
        } else if leftToTarget > rightToTarget {
            // 오른쪽 엄지손가락 이동시키기
            rightPosition = (targetIndex.0, targetIndex.1)
            result.append("R")
        } else if leftToTarget == rightToTarget {
            if hand == "left" {
                leftPosition = (targetIndex.0, targetIndex.1)
                result.append("L")
            } else {
                rightPosition = (targetIndex.0, targetIndex.1)
                result.append("R")
            }
        }
        
    }
    return result
}
