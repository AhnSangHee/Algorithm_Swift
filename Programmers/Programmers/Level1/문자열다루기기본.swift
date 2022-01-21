//
//  문자열다루기기본.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/13.
//

import Foundation

func solution(_ s:String) -> Bool {
    var charSet = CharacterSet(charactersIn: "0123456789").inverted // 숫자를 제외한 모든 문자
    guard s.count == 4 || s.count == 6 else {
        return false
    }
    if let _ = s.rangeOfCharacter(from: charSet) { // 숫자 아닌 문자 포함되어있다면 false
        return false
    }
    return true
}
