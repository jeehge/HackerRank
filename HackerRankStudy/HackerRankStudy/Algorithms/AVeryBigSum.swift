//
//  AVeryBigSum.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/20.
//

import Foundation

class AVeryBigSum {
    
    static func resultPrint() {
        
        func aVeryBigSum(arr: [Int]) -> Int {
            // Write your code here
            var result:Int = 0;
            for i in 0..<arr.count {
                result += arr[i]
            }
            return result
        }
        
        let arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
        let result = aVeryBigSum(arr: arr)
        print(result)
    }
}
