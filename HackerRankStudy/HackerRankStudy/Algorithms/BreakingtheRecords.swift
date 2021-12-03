//
//  BreakingtheRecords.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/04.
//

import Foundation

class BreakingtheRecords: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'breakingRecords' function below.
         *
         * The function is expected to return an INTEGER_ARRAY.
         * The function accepts INTEGER_ARRAY scores as parameter.
         */

        func breakingRecords(scores: [Int]) -> [Int] {
            // Write your code here
            var min: (count: Int, value: Int) = (0, 0)
            var max: (count: Int, value: Int) = (0, 0)
            
            scores.enumerated().forEach { (index: Int, element: Int) in
                if index == 0 {
                    min.value = element
                    max.value = element
                    return
                }
                
                if max.value < element {
                    max.count += 1
                    max.value = element
                } else if min.value > element {
                    min.count += 1
                    min.value = element
                }
            }
            return [max.count, min.count]
        }

        let scores: [Int] = [10, 5, 20, 20, 4, 5, 2, 25, 1]

        let result = breakingRecords(scores: scores)
        print(result)
    }
}
