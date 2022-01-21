//  직사각형에서 탈출
//  1085.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/09/28.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

var arr = [x, y, h - y, w - x]

print(arr.min()!)
