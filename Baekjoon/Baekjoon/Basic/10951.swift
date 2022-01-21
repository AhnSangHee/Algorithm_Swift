//  A+B - 4
//  10951.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/10.
//

import Foundation

while let input = readLine() {
    print(input.split(separator: " ").map{ Int($0)! }.reduce(0, +))
}
