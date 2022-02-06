//
//  신고결과받기.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/06.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var emailResult = [String: Int]() // 이메일 결과 저장
    for i in 0..<id_list.count {
        emailResult.updateValue(0, forKey: id_list[i])
    }
    
    var userInfoDic = [String: [String]]() // [신고 당한 유저 ID: [신고한 유저 ID]]
    for i in report {
        let reportArr = i.components(separatedBy: " ").map { String($0) }
        let userId = reportArr[0] // 신고한 유저 ID
        let targetId = reportArr[1] // 신고 당한 유저 ID
        
        if userInfoDic[targetId] == nil {
            userInfoDic.updateValue([userId], forKey: targetId)
        } else {
            if !userInfoDic[targetId]!.contains(userId) {
                userInfoDic[targetId]!.append(userId)
            }
        }
    }
    
    for targetId in userInfoDic.keys {
        if userInfoDic[targetId]!.count >= k {
            for n in userInfoDic[targetId]! {
                emailResult[n]! += 1
            }
        }
    }
    
    var ans = [Int]()
    for id in id_list {
        ans.append(emailResult[id]!)
    }
    
    return ans
}
