//
//  나머지가1이되는수찾기.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/14.
//

import Foundation

func solution(_ n: Int) -> Int {
    for i in 2..<n {
        if n % i == 1 {
            return i
        }
    }
    return 0
}
