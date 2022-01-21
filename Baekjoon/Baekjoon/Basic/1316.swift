//  그룹 단어 체커
//  1316.swift
//  1316
//
//  Created by 안상희 on 2021/09/12.
//

import Foundation

let N = Int(readLine()!)!

var i = 0, ans = 0

while i < N {
    var alphabet = [Bool](repeating: false, count: 26)
    
    let word = readLine()!.map { String($0) }
    
    var notGroupWord = false
    
    for j in 0 ..< word.count {
        let asciiCode = Int(Character(word[j]).asciiValue!)
        let index = asciiCode - 97
        
        if alphabet[index] == false { // 처음 나온 알파벳일 경우, 나왔다고 true로 표시하기
            alphabet[index] = true
        } else if alphabet[index] == true && word[j] != word[j - 1] { // 이미 나온 알파벳일 경우, 연속된 알파벳이 아니라면 그룹단어 아님
            notGroupWord = true
        }
        
    }
    
    if !notGroupWord {
        ans += 1
    }
    i += 1
}

print(ans)
