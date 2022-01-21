//  셀프 넘버
//  4673.swift
//  4673
//
//  Created by 안상희 on 2021/07/24.
//

import Foundation

var num = 1
var arr = [Bool](repeating: false, count: 10050) // true이면 생성자가 있는 숫자.

func selfNumber(num: Int) -> Int {
    var sum = num
    var temp = num
    
    while temp != 0 {
        sum += (temp % 10)
        temp /= 10
    }
    return sum
}

for i in 1...10000 {
    let selfNum = selfNumber(num: i)
    arr[selfNum] = true // 생성자가 있는 숫자
}

for i in 1...10000 {
    if arr[i] == false {
        print(i)
    }
}
