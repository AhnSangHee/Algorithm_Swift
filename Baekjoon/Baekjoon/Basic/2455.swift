//  지능형 기차
//  2455.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/26.
//

import Foundation

var maxPeople = 0 // 최대 사람 수
var a = 0 // 내린 사람 수
var b = 0 // 탄 사람 수
var people = 0 // 현재 기차에 있는 사람 수

var num = readLine()!.split(separator: " ").map { Int($0)! }

a = num[0]
b = num[1]
maxPeople = b // 처음에는 기차에 있는 사람 수가 최대 사람 수
people = b // 처음에는 기차에 있는 사람 수 = 탄 사람 수

for _ in 0 ..< 3 {
    num = readLine()!.split(separator: " ").map { Int($0)! }
    a = num[0]
    b = num[1]
    
    people -= a // 내린 사람 수 빼기
    people += b // 탄 사람 수 더하기
    
    if maxPeople < people { // 최대 값 변경
        maxPeople = people
    }
}

print(maxPeople)
