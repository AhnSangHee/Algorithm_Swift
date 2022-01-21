//  달팽이는 올라가고 싶다
//  2869.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/26.
//

import Foundation

let num = readLine()!.split(separator: " ").map { Int($0)! }

let A = num[0]
let B = num[1]
let V = num[2]

var ans = (V - A) / (A - B) + 1

if ((V - A) % (A - B)) != 0 { // 나머지가 있을 경우
    print(ans + 1)
} else { // 나머지가 없을 경우
    print(ans)
}
