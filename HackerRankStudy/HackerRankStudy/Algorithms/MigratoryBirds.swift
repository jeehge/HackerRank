//
//  MigratoryBirds.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/23.
//

import Foundation

class MigratoryBirds: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'migratoryBirds' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts INTEGER_ARRAY arr as parameter.
         */

        func migratoryBirds(arr: [Int]) -> Int {
            // Write your code here
            
            var result: [Int: Int] = [:]
            var finalValue = 0
            var maxCount = 0

            for value in arr {
                if result[value] == nil {
                    result[value] = 1
                } else {
                    result[value]! += 1
                }

                if maxCount < result[value]! {
                    finalValue = value
                    maxCount = result[value]!
                } else if maxCount == result[value]! && finalValue > value {
                    finalValue = value
                    maxCount = result[value]!
                }
            }

            return finalValue
        }

        let arr = [1, 4, 4, 4, 5, 3]
//        let arr = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]
        let result = migratoryBirds(arr: arr)
        print(result)
    }
}
