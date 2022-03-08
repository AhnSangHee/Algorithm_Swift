//  골드바흐의 추측
//  9020.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

var number = 10000
var arr = Array(0...number)
func solution() {
    arr[1] = 0

    for i in 2...number {
        if arr[i] == 0 {
            continue
        }
        
        for j in stride(from: i * 2, through: number, by: i) {
            arr[j] = 0
        }
    }
}
solution()

var primeNumbers = [Int]()
for number in arr {
    if number != 0 {
        primeNumbers.append(number) // primeNumber만 저장
    }
}

var T = Int(readLine()!)!
while T != 0 {
    let num = Int(readLine()!)! // 짝수만 주어진다!
    let halfNumber = num / 2

    if primeNumbers.contains(halfNumber) { // 반으로 나눈게 소수라면
        print(halfNumber, halfNumber)
    } else {
        var a = halfNumber - 1
        var b = halfNumber + 1
        while primeNumbers.contains(a) != true || primeNumbers.contains(b) != true {
            a -= 1
            b += 1
        }
        
        print(a, b)
    }
    T -= 1
}
