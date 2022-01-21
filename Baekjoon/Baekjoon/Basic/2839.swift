//  설탕 배달
//  2839.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/26.
//

import Foundation

let N = Int(readLine()!)!

var kg5 = N / 5 // 입력 받은 무게로 5kg 봉지 몇 개 사용가능한지 체크
var kg3 = 0
var isPossible = false

while true {
    if kg5 < 0 {
        isPossible = false
        break
    }
    
    if ((N - (5 * kg5)) % 3 == 0) { // (N - 5kg * 봉지 수)가 3으로 나눠떨어진다면 3kg 봉지 수 구하고 break
        kg3 = ((N - (5 * kg5)) / 3)
        isPossible = true
        break
    }
    kg5 -= 1 // 위의 if문에서 3으로 나눠떨어지지 않는다면, 5kg 봉지 수 하나씩 줄여가며 체크하기
}


if isPossible {
    print("\(kg5 + kg3)")
} else {
    print("-1")
}
