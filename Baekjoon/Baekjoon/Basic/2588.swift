//  곱셈
//  2588.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/07/08.
//

import Foundation

// # Solution 1.
var a = Int(readLine()!)!
var b = Int(readLine()!)!

print(a * (b % 10))
print(a * ((b / 10) % 10))
print(a * (b / 100))
print(a * b)


// # Solution 2.
// String? -> Array<Character> -> String -> Int
//var arr = Array(readLine()!).map { (value: Character) -> Int in
//    return Int(String(value))!
//}

var num1 = Int(readLine()!)!
var num2 = readLine()!

var arr2 = Array(num2).map { Int(String($0))! }
print(num1 * arr2[2])
print(num1 * arr2[1])
print(num1 * arr2[0])
print(num1 * Int(num2)!)
