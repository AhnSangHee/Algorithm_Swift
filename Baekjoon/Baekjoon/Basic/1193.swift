//  분수찾기
//  1193.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/25.
//

import Foundation

let X = Int(readLine()!)!

var idx = 1 // 분수의 순서
var group = 1 // 그룹 번호
var groupIdx = 1 // 그룹 내에서의 인덱스
var sum = 0
var cnt = 0 // 찾고자 하는 숫자가 존재하는 그룹 이전의 그룹들이 갖는 분수의 갯수
var a = 0 // 분자
var b = 0 // 분모

while sum < X {
    sum += group
    group += 1
}
group -= 1

for i in 1 ..< group {
    cnt += i
}
cnt += 1

while cnt != X {
    cnt += 1
    groupIdx += 1
}

if group % 2 != 0 {
    a = group - groupIdx + 1
    b = groupIdx
} else {
    a = groupIdx
    b = group - groupIdx + 1
}

print("\(a)/\(b)")
