class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {return false}
        if x < 10 {return true}
        
        var v = x
        var result = 0
        
        while v != 0 {
            result = (result * 10) + (v % 10)
            v /= 10
        }
        return result == x
    }
}
