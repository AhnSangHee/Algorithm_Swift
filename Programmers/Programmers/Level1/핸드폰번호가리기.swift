//
//  핸드폰번호가리기.swift
//  핸드폰번호가리기
//
//  Created by 안상희 on 2021/09/01.
//

import Foundation

func solution(_ phone_number:String) -> String {
    return String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
}
