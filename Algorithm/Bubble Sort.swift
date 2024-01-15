//
//  Bubble Sort.swift
//  
//
//  Created by Mahmudul Hasan on 15/1/24.
//

import Foundation

func bubbleSort(_ array: inout [Int]) {
    let size = array.count
    
    for x in 0..<size {
        for y in 0..<size-x-1 {
            
            if array[y] > array[y+1] {
                
                let temp = array[y]
                array[y] = array[y+1]
                array[y+1] = temp
            }
        }
        
    }

}

var arr = [34,64,5,8,0,1,10]
bubbleSort(&arr)
print("Sorted array in ascending order: \(arr)")
