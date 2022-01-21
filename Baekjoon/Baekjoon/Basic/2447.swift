//  별 찍기 - 10
//  2447.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/02.
//

import Foundation

let num = Int(readLine()!)!

let arr: [String] = Array(repeating: " ", count: num)
var starArr: [[String]] = Array(repeating: arr, count: num)

func printStar(x: Int, y: Int, n: Int) {
    if n == 1 {
        starArr[x][y] = "*"
        return
    }

    for i in 0..<3 {
        for j in 0..<3 {
            if j == 1 && i == 1 {
                continue
            } else {
                printStar(x: x+(n/3*j), y: y+(n/3*i), n: n/3)
            }
        }
    }
}

printStar(x: 0, y: 0, n: num)

for i in starArr {
    var star = ""
    i.forEach { star.append($0) }
    print(star)
}
