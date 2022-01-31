//
//  시저암호.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/30.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var str = Array(s)
    for i in 0..<str.count {
        if str[i] == " " { continue } // 공백 무시
        
        var asciiCode = Int(str[i].asciiValue!)
        asciiCode += n
        
        if str[i].isUppercase { // 대문자
            if asciiCode > 90 {
                asciiCode -= 26
            }
        } else { // 소문자
            if asciiCode > 122 {
                asciiCode -= 26
            }
        }

        str[i] = Character(UnicodeScalar(asciiCode)!)
    }
    return String(str)
}
