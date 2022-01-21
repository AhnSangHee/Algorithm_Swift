//  크로아티아 알파벳
//  2941.swift
//  2941
//
//  Created by 안상희 on 2021/09/01.
//

import Foundation

let input = readLine()!
let croatia = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var ans = 0, i = 0
while i < input.count {
    var cnt = 1

    for str in croatia {
        
        if str.count + i <= input.count, str == String(Array(input)[i ..< i + str.count]){
            cnt = str.count
            break
        }
    }

    ans += 1
    i += cnt
}
print(ans)
