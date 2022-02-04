//
//  최소직사각형.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/04.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var big = [Int]()
    var small = [Int]()
    
    for i in 0..<sizes.count {
        if sizes[i][0] < sizes[i][1] {
            small.append(sizes[i][0])
            big.append(sizes[i][1])
        } else {
            big.append(sizes[i][0])
            small.append(sizes[i][1])
        }
    }
    return big.max()! * small.max()!
}
