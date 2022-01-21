//
//  수박수박수박수박수.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/22.
//

import Foundation

func solution(_ n:Int) -> String {
    var ans = ""
    
    if n == 0 {
        return ans
    }
    
    for i in 1...n {
        ans += (i % 2) == 0 ? "박" : "수"
    }
    return ans
}
