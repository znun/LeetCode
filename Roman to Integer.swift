

import Foundation

class Solution {
   func roToInt(_ ch: Character) -> Int {
       switch (ch) {
        case "I":
           return 1
       case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return -1
        }
    }

func romanToInt(_ s : String) -> Int {
    let chars = Array(s)
    var result = 0
    for i in 0..<chars.count {
        if i < chars.count - 1 && roToInt(chars[i]) < roToInt(chars[i + 1]) {
            result -= roToInt(chars[i])
            
            continue
       }
        result += roToInt(chars[i])

        }
    return result
      
    }
}
