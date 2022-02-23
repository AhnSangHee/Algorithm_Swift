//  Strfry
//  11328.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/02/23.
//

import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    let first = input[0].map { String($0) }.sorted()
    let second = input[1].map { String($0) }.sorted()
    
    if first == second {
        print("Possible")
    } else {
        print("Impossible")
    }
}
