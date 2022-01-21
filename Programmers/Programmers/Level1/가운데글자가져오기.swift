//
//  가운데글자가져오기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/11.
//

import Foundation

func solution(_ s:String) -> String {
    let str = s
    var mid: Int
    if str.count.isMultiple(of: 2) { // 짝수이면
        mid = str.count / 2 - 1
        let lower = str.index(str.startIndex, offsetBy: mid)
        let upper = str.index(str.startIndex, offsetBy: mid + 1)
        return String(str[lower...upper])
    } else { // 홀수이면
        mid = str.count / 2
    }
    return String(str[str.index(str.startIndex, offsetBy: mid)])
}


// 다른 풀이
func solution(_ s:String) -> String {
    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}
