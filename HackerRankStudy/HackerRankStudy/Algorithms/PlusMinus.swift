//
//  PlusMinus.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/22.
//

import Foundation

class PlusMinus {
    
    static func resultPrint() {
        /*
         * Complete the 'plusMinus' function below.
         *
         * The function accepts INTEGER_ARRAY arr as parameter.
         */

        func plusMinus(arr: [Int]) -> Void {
            // Write your code here
            var result: [Double] = [0.0, 0.0, 0.0]
            arr.forEach {
                if $0 > 0 {
                    result[0] += 1
                } else if $0 < 0 {
                    result[1] += 1
                } else {
                    result[2] += 1
                }
            }
            let total = Double(arr.count)
            print(String(format: "%.6f", result[0] / total))
            print(String(format: "%.6f", result[1] / total))
            print(String(format: "%.6f", result[2] / total))
        }
        
        let arr: [Int] = [-4, 3, -9, 0, 4, 1]
        plusMinus(arr: arr)
    }
}
