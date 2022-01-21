//  골드바흐의 추측
//  9020.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

var arr = [Int](repeating: 0, count: 10001)

for i in 2...10000 {
    arr[i] = i
}

for i in 2...10000 {
    for j in stride(from: i * 2, through: 10000, by: i) {
        arr[j] = 0
    }
}

var primeNumbers = [Int]()
for i in 2...10000 {
    // 배열에 소수만 저장하기
    if arr[i] != 0 {
        primeNumbers.append(i)
    }
}

var T = Int(readLine()!)!

while T != 0 {
    let num = Int(readLine()!)! // 짝수만 주어진다!
    
    let halfNumber = num / 2

    if primeNumbers.contains(halfNumber) {
        // 반으로 나눈게 소수라면
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
