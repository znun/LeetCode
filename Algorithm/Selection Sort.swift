//
//  Selection Sort.swift
//  
//
//  Created by Mahmudul Hasan on 14/1/24.
//

import Foundation

func selectionSort(array: [Int]) -> [Int] {
    
    var arr = array
    
    for x in 0..<arr.count {
        var index = x
        for y in x+1..<arr.count {
            if arr[y] < arr[index] {
                index = y
            }
        }
        
        if index != x {
            arr.swapAt(x, index)
        }
        
    }
    return arr
}

let array = [9, 1, 8, 1, 3, 5, 10, 2, 8, 23, 6]
let resultantArr = selectionSort(array: array)
print("Sorted array in ascending order:", resultantArr)
