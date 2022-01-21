//
//  K번째수.swift
//  Programmers
//
//  Created by 안상희 on 2021/10/23.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var ans = [Int]()
    
    for command in commands {
        let first = command[0] - 1
        let second = command[1] - 1
        let third = command[2] - 1
        
        var arr = array[first...second].sorted()
        ans.append(arr[third])
    }
    return ans
}


// 다른 풀이
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({(key) in
        return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
    })
    
}
