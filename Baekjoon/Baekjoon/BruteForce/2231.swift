//  분해합
//  2231.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/09.
//

import Foundation

let N = Int(readLine()!)!

var sum = 0
var creator = 1

while creator != N {
    var temp = creator
    sum = creator // 합 = (1. 생성자의 값) + (2. 생성자의 각 자리의 숫자의 합)인데, 여기서는 일단 1. 생성자의 값만 더해줌.
    
    while temp != 0 {
        // 생성자의 각 자리의 숫자 더해주기
        sum += (temp % 10)
        temp /= 10
    }
    
    if N == creator || N == sum {
        // 입력 받은 수 = 생성자 이거나 (이 경우는 생성자가 없는 것), 입력 받은 수 = 다 더한 값 (sum) 이면 (이 경우는 생성자 존재) break
        break
    }
    
    creator += 1
}

if creator == N {
    print("0")
} else {
    print(creator)
}
