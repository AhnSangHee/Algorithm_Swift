//
//  다트게임.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/03.
//

import Foundation

func solution(_ dartResult:String) -> Int {
    let input = Array(dartResult)
    var record = [Int](repeating: 0, count: 3)
    var index = 0
    var currentScoreStr = ""
    for i in 0..<input.count {
        if input[i] == "S" || input[i] == "D" || input[i] == "T" {
            let currentScore = Int(currentScoreStr)!
            switch input[i] {
            case "S":
                record[index] = pow(num: currentScore, count: 1)
            case "D":
                record[index] = pow(num: currentScore, count: 2)
            case "T":
                record[index] = pow(num: currentScore, count: 3)
            default:
                break
            }
            
            currentScoreStr = "" // 다시 초기화
            index += 1
        } else if input[i] == "*" { // 스타상
            // 첫번째 기회에 나온 경우, 첫번째 스타상의 점수만 2배
            if index == 1 { // index가 1이라면 첫번째 기회에 나온 것
                record[0] = record[0] * 2
            } else if index == 2 { // index가 2라면 두번째 기회에 나온 것. 해당 점수와 바로 전의 점수 2배 해야함
                record[1] = record[1] * 2
                record[0] = record[0] * 2
            } else {
                record[2] = record[2] * 2
                record[1] = record[1] * 2
            }
        } else if input[i] == "#" {
            if index == 1 { // index가 1이라면 첫번째 기회에 나온 것
                record[0] = record[0] * -1
            } else if index == 2 { // index가 2라면 두번째 기회에 나온 것
                record[1] = record[1] * -1
            } else {
                record[2] = record[2] * -1
            }
        } else {
            currentScoreStr.append(String(input[i])) // 점수 구하기
        }
    }

    return record.reduce(0, +)
}


func pow(num: Int, count: Int) -> Int {
    var ans = 1
    for _ in 0..<count {
        ans *= num
    }
    return ans
}
