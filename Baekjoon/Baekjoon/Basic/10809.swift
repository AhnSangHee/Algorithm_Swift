//  알파벳 찾기
//  10809.swift
//  10809
//
//  Created by 안상희 on 2021/08/30.
//

import Foundation

let S = readLine()!.map { (value: Character) -> Character in
    return value
}

var arr = [Int](repeating: -1, count: 26)

for i in 0 ... S.count - 1 {
    let index = Int(S[i].asciiValue! - 97)
    
    if arr[index] == -1 {
        arr[index] = i
    }
}

for i in arr {
    print(i, terminator: " ")
}
