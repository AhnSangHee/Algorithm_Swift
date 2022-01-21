//
//  이상한문자만들기.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/14.
//

import Foundation

func solution(_ s:String) -> String {
    var ans = ""
    var index = 0
    
    for char in s {
        if char == " " {
            ans.append(" ")
            index = 0
        } else {
            // 짝수 인덱스일 경우에만 대문자로 변경
            if index.isMultiple(of: 2) {
                ans.append(char.uppercased())
            } else {
                ans.append(char.lowercased())
            }
            index += 1
        }
    }
    return ans
}
