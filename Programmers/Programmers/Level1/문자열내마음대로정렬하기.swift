//
//  문자열내마음대로정렬하기.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/31.
//

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: <).sorted {
        $0[$0.index($0.startIndex, offsetBy: n)] < $1[$1.index($1.startIndex, offsetBy: n)]
    }
}
