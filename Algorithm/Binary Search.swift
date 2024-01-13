//
//  Binary Search.swift
//  
//
//  Created by Mahmudul Hasan on 12/1/24.
//

import Foundation


func binarySearch(array: [Int], target: Int) -> Int? {
    var left = 0
    var right = array.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if array[mid] == target {
            return mid
        } else if array[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return nil
}

let arr = [1, 3, 5, 7, 9, 11, 13, 15, 17]
if let indexValue = binarySearch(array: arr, target: 17) {
    print("Element found at index \(indexValue)")
}
else {
    print("Element Not found")
}
