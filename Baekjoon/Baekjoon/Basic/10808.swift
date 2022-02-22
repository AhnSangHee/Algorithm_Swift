//  알파벳 개수
//  10808.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/22.
//

import Foundation

let input = readLine()!.map { (value: Character) -> Character in
    return value
}

var alphabet = [Int](repeating: 0, count: 26) // 알파벳 배열
for i in 0..<input.count {
    let index = Int(input[i].asciiValue! - 97) // 아스키값 - 97 뺀 값을 인덱스로 만들기.
    
    alphabet[index] += 1 // 나온 횟수 카운트
}

for num in alphabet {
    print(num, terminator: " ")
}
