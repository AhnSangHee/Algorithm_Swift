//  소수
//  2581.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/27.
//

import Foundation

let M = Int(readLine()!)!
let N = Int(readLine()!)!

var arr = [Int](repeating: 0, count: 10001)

for i in 2...10000 {
    arr[i] = i
}

for i in 1...10000 {
    if arr[i] == 0 {
        continue
    }
    
    for i in 2...10000 {
        if arr[i] == 0 {
            continue
        }
        
        var index = i * 2
        
        while index <= 10000 {
            arr[index] = 0
            
            index += i
        }
    }
}

var total = 0

for i in M...N {
    if arr[i] != 0 {
        total += arr[i]
    }
}

if total == 0 {
    print(-1)
} else {
    print(total)
    
    for i in M...N {
        if arr[i] != 0 {
            var minValue = arr[i]
            print(minValue)
            break
        }
    }
}
