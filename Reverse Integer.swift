//
//  Reverse Integer.swift
//  
//
//  Created by Mahmudul Hasan on 6/1/24.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
         return Int(Int32((x < 0 ? "-" : "") + "\(abs(x))".reversed()) ?? Int32(0))
    }
}
