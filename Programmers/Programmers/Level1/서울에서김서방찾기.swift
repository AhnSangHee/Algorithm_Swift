//
//  서울에서김서방찾기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/22.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            return "김서방은 \(i)에 있다"
        }
    }
    return ""
}
