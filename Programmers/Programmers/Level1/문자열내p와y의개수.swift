//
//  문자열내p와y의개수.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/13.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var cnt1 = 0
    var cnt2 = 0
    for i in s.uppercased() {
        switch i {
        case "P":
            cnt1 += 1
        case "Y":
            cnt2 += 1
        default:
            continue
        }
    }
    if cnt1 == cnt2 {
        return true
    }
    return false
}


// 다른 사람 풀이
func solution(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}
