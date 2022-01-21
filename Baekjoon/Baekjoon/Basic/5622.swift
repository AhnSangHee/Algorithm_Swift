//  다이얼
//  5622.swift
//  5622
//
//  Created by 안상희 on 2021/08/31.
//

import Foundation

let word = readLine()!.map { (ch: Character) -> Character in
    return ch
}

var count = 0 // 1을 걸려면 2초, 2는 3초, 3은 4초..

for i in 0...word.count - 1 {
    if word[i] >= "A" && word[i] <= "C" {
        count += 3
    } else if word[i] >= "D" && word[i] <= "F" {
        count += 4
    } else if word[i] >= "G" && word[i] <= "I" {
        count += 5
    } else if word[i] >= "J" && word[i] <= "L" {
        count += 6
    } else if word[i] >= "M" && word[i] <= "O" {
        count += 7
    } else if word[i] >= "P" && word[i] <= "S" {
        count += 8
    } else if word[i] >= "T" && word[i] <= "V" {
        count += 9
    } else if word[i] >= "W" && word[i] <= "Z" {
        count += 10
    }
}

print(count)
