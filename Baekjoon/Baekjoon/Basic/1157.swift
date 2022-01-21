//  단어 공부
//  1157.swift
//  1157
//
//  Created by 안상희 on 2021/08/31.
//

import Foundation

let word = readLine()!

var alphabet = [Int](repeating: 0, count: 26)

for i in word {
    var asciiCode = Int(i.asciiValue!)

    if asciiCode >= 97 && asciiCode <= 122 { // 소문자일 경우, 대문자로 바꿔주기.
        asciiCode -= 32
    }

    alphabet[asciiCode - 65] += 1
}

var b = false
var ans = 0
var index = 0

for i in 0...alphabet.count - 1 {
    if ans < alphabet[i] {
        b = false
        ans = alphabet[i]
        index = i
    } else if ans == alphabet[i] {
        b = true // 중복있음!
        ans = alphabet[i]
    }
}

b ?? print("?") : print(UnicodeScalar(index + 65)!) // 아스키코드값을 이용해서 대문자 출력
