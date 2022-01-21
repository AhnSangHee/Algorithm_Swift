//
//  자릿수더하기.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/11.
//

import Foundation

func solution(_ n:Int) -> Int
{
    return Int(String(n).reduce(0) { $0 + Int(String($1))! })
}
