//  문자열 반복
//  2675.swift
//  2675
//
//  Created by 안상희 on 2021/08/31.
//

import Foundation

var T = Int(readLine()!)!

while T != 0 {
    let input = readLine()!.map { (ch: Character) -> Character in
        return ch
    }
    
    var repeatCount = input[0].wholeNumberValue!
    
    for i in 2...input.count - 1 {
        while repeatCount != 0 {
            print(input[i], separator: "", terminator: "")
            repeatCount -= 1
        }
        repeatCount = input[0].wholeNumberValue!
    }
    print("")
    
    T -= 1
}
