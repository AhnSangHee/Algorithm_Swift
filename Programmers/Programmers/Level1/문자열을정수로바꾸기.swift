//
//  문자열을정수로바꾸기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/13.
//

import Foundation

func solution(_ s:String) -> Int {
    var str = s
    if str.first! == "-" {
        str.removeFirst()
        return -Int(str)!
    }
    return Int(str)!
}



// 이것도 가능
func solution(_ s:String) -> Int {
    return Int(s)!
}
