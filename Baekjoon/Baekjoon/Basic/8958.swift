//  OX퀴즈
//  8958.swift
//  8958
//
//  Created by 안상희 on 2021/07/23.
//

import Foundation

var N = Int(readLine()!)!

for _ in 1...N {
    var score = 0
    let result = readLine()!.map { (value: Character) -> Character in
        value
    }
    
    var cnt = 0
    for j in 0...result.count - 1 {
        if result[j] == "O" {
            cnt += 1
            score += cnt
        } else {
            cnt = 0
        }
    }
    print(score)
}
