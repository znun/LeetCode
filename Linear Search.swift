//
//  Linear Search.swift
//  
//
//  Created by Mahmudul Hasan on 9/1/24.
//

import Foundation

func linearSearchAlgorithm<M: Equatable> (_ array: [M], _ element: M) -> Int? {
    for x in 0..<array.count {
        if array[x] == element {
            return x
        }
    }
    return nil
}

let arr = [2, 4, 19, 5, 23, 7, 16, 5, 18]
let ele = 2

if let indexValue = linearSearchAlgorithm(arr, ele) {
   print("Element \(ele) is found at index \(indexValue)")
} else {
   print("Element \(ele) is not found in the given array.")
}
