//
//  비밀지도.swift
//  Programmers
//
//  Created by 안상희 on 2022/02/04.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var myMap = [Int]()
    var bitMap = [String]()
    
    for i in 0..<n {
        let bits = arr1[i] | arr2[i]
        myMap.append(bits)
        bitMap.append(String(myMap[i], radix: 2))
        
        bitMap[i] = bitMap[i].replacingOccurrences(of: "1", with: "#").replacingOccurrences(of: "0", with: " ")
        
        while bitMap[i].count != n {
            bitMap[i].insert(" ", at: bitMap[i].startIndex)
        }
    }
    
    return bitMap
}
