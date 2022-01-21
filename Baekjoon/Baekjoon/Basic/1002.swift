//  터렛
//  1002.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/29.
//

import Foundation

var T = Int(readLine()!)!

while T != 0 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let a1 = input[0]
    let b1 = input[1]
    let r1 = input[2]
    let a2 = input[3]
    let b2 = input[4]
    let r2 = input[5]
    
    let a = (a2 - a1) * (a2 - a1)
    let b = (b2 - b1) * (b2 - b1)
    
    let s = a + b // 두 중심 사이의 거리를 더한 후 제곱한 값
    var check1 = 0
    let check2 = (r1 + r2) * (r1 + r2) // 두 반지름의 거리를 더한 후 제곱한 값 (r + r')^2
    
    // 긴 반지름에서 작은 반지름을 빼고 제곱한 값 (r' - r)^2
    if r1 > r2 {
        check1 = (r1 - r2) * (r1 - r2)
    } else if r1 < r2 {
        check1 = (r2 - r1) * (r2 - r1)
    } else if r1 == r2 {
        check1 = 0
    }
                
    if s == 0 { // 중심이 같을 경우
        if r1 == r2 {
            print("-1") // 두 원이 일치
        } else {
            print("0") // 동심원
        }
    } else if check1 == s || check2 == s {
        print("1") // 한 점에서 만나는 경우
    } else if check1 < s && s < check2 {
        print("2") // 두 점에서 만나는 경우
    } else {
        print("0")
    }
    
    T -= 1
}
