//  하노이 탑 이동 순서
//  11729.swift
//  Baekjoon
//
//  Created by 안상희 on 2021/10/03.
//

import Foundation

let N = Int(readLine()!)!
var K = 0
var ans = ""

func HanoiTower(num: Int, src: Int, mid: Int, des: Int) {
    // src에 꽂혀있는 num개의 원반을 mid를 거쳐서 des로 이동
    // src : 출발 막대 1, mid : 중간 막대 2 (거치는 막대), des : 도착 막대 3
    K += 1
    if num == 1 { // 이동할 원반의 수가 1개일 경우
        // 원반 1을 출발지 src에서 목적지 des로 이동
        ans.append("\(src) \(des)\n")
    } else {
        // 먼저 출발 막대 (src)에서 도착 막대 (mid)로 des 막대를 거쳐서 n-1개의 원반을 이동
        HanoiTower(num: num - 1, src: src, mid: des, des: mid)
        
        // 큰 원반 (맨 아래의 원반) 1개를 src에서 des으로 이동
        ans.append("\(src) \(des)\n")
        
        // 작은 원반 (n-1개의 원반)들을 mid에서 des으로 이동
        // mid 막대에 있는 n-1개의 원반들을 src 막대를 거쳐서 des 막대로 이동
        HanoiTower(num: num - 1, src: mid, mid: src, des: des)
    }
}

HanoiTower(num: N, src: 1, mid: 2, des: 3)
print(K)
print(ans)
