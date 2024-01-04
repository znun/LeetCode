//
//  Letter Combinations of a Phone Number.swift
//  
//
//  Created by Mahmudul Hasan on 4/1/24.
//

import Foundation

class Solution {

        private let dict = ["2" : ["a", "b", "c"],
                           "3" : ["d", "e", "f"],
                           "4" : ["g", "h", "i"],
                           "5" : ["j", "k", "l"],
                           "6" : ["m", "n", "o"],
                           "7" : ["p", "q", "r", "s"],
                           "8" : ["t", "u", "v"],
                           "9" : ["w", "x", "y", "z"]]

    func letterCombinations(_ digits: String) -> [String] {
        var s = [String]()
        for i in digits.map({$0.lowercased() }) {
            guard let keys = dict[i] else {break}

            if s.isEmpty {
                keys.forEach {s.append($0)}
                continue
            }

            let arr = s.map { _ in s.removeFirst()}
            for ch in keys { s += arr.map({$0 + ch})}
        }
    
        return s
    }
}
