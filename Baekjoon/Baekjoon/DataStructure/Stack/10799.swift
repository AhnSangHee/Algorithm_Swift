//  쇠막대기
//  10799.swift
//  Baekjoon
//
//  Created by 안상희 on 2022/03/12.
//

import Foundation

let input = readLine()!.map { String($0) }

var stack = [String]()
var cnt = 0
for index in 0..<input.count {
    if input[index] == "(" { // '('는 무조건 push
        stack.append(input[index])
    } else if !stack.isEmpty && input[index - 1] == ")" && input[index] == ")" { // ')'가 연속으로 오면 +1
        cnt += 1
        stack.removeLast()
    } else if !stack.isEmpty && stack.last! == "(" && input[index] == ")" {
        // 스택이 비어있지 않고, 스택의 top이 '(' 이면서 s[i] = ')' 인 경우
        // 스택의 top은 스택이 비어있지 않다면 무조건 '('이기 때문에, st.top() == '('를 체크 안해줘도 된다
        stack.removeLast()
        cnt += stack.count
    }
}

print(cnt)
