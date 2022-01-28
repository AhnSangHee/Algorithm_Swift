//
//  신규아이디추천.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/26.
//

import Foundation

func solution(_ new_id:String) -> String {
    let availableCharacter = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "-", "_", ".", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    // 1단계
    var id = new_id.lowercased().map { String($0) }

    // 2단계
    var num = 0
    for i in 0..<id.count {
        if !availableCharacter.contains(String(id[i - num])) {
            id.remove(at: i - num)
            num += 1
        }
    }
    
    // 3단계
    num = 0
    for i in 1..<id.count {
        if id[i - 1 - num] == "." && id[i - 1  - num] == id[i - num] {
            id.remove(at: i - num)
            num += 1
        }
    }
    
    // 4단계
    if id.count != 0 && id.first! == "."  {
        id.removeFirst()
    }
    
    if id.count != 0 && id.last! == "." {
        id.removeLast()
    }
    
    // 5단계
    if id.count == 0 {
        id.append("a")
    }
    
    // 6단계
    num = 0
    if id.count >= 16 {
        for i in 0...id.count {
            if i >= 16 {
                id.remove(at: i - 1 - num)
                num += 1
            }
        }
        
        if id.last! == "." {
            id.removeLast()
        }
    }
    
    // 7단계
    if id.count <= 2 {
        while id.count != 3 {
            id.append(id.last!)
        }
    }
    
    return id.joined()
}



func solution2(_ new_id:String) -> String {
    // 1단계
    let id = new_id.lowercased()
    
    // 2단계
    var newId = ""
    for char in id {
        if char.isLetter || char.isNumber || char == "-" || char == "_" || char == "." {
            newId.append(char)
        }
    }
    
    // 3단계
    while newId.contains("..") {
        newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계
    while newId.hasPrefix(".") {
        newId.removeFirst()
    }
    
    while newId.hasSuffix(".") {
        newId.removeLast()
    }
    
    // 5단계
    if newId == "" {
        newId = "a"
    }
    
    // 6단계
    if newId.count >= 16 {
        let index = newId.index(newId.startIndex, offsetBy: 15)
        newId = String(newId[newId.startIndex..<index])
        
        if newId.hasSuffix(".") {
            newId.removeLast()
        }
    }
    
    // 7단계
    if newId.count <= 2 {
        while newId.count != 3 {
            newId = newId + String(newId.last!)
        }
    }
    
    return newId
}
