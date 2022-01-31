//
//  2016년.swift
//  Programmers
//
//  Created by 안상희 on 2022/01/31.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let date = "2016-\(a)-\(b)"

    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    formatter.locale = Locale(identifier: "en_US_POSIX")

    let convertedDate = formatter.date(from: date) // 문자열을 Date 형식으로 변환

    formatter.dateFormat = "EEE"
    let convertStr = formatter.string(from: convertedDate!) // 요일을 영어로 변환

    return convertStr.uppercased()
}
