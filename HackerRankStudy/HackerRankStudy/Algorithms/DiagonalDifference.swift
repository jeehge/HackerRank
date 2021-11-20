//
//  DiagonalDifference.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/21.
//

import Foundation

class DiagonalDifference {
    
    static func resultPrint() {
        /*
         * Complete the 'diagonalDifference' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts 2D_INTEGER_ARRAY arr as parameter.
         */

        func diagonalDifference(arr: [[Int]]) -> Int {
            // Write your code here
            var result: [Int] = [0, 0]
            arr.enumerated().forEach { (index, a) in
                result[0] += a[index]
                result[1] += a[arr.count - 1 - index]
            }
            let resultValue = result[0] - result[1]
            
            if resultValue < 0 {
                return resultValue * -1
            } else {
                return resultValue
            }
        }

        let arr = [[1, 2, 3], [4, 5, 6], [9, 8, 9]]
        let result = diagonalDifference(arr: arr)
        print(result)
    }
}
