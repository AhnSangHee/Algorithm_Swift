//  단어의 개수
//  1152.swift
//  1152
//
//  Created by 안상희 on 2021/08/31.
//

import Foundation

let str = readLine()!.components(separatedBy: " ").map { str in
    return str
}

var count = 0

for i in str {
    if i.count != 0 {
        count += 1
    }
}

print(count)
