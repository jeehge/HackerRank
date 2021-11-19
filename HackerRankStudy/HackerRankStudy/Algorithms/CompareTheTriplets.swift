//
//  CompareTheTriplets.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/19.
//

import Foundation

class CompareTheTriplets {
    
    static func resultPrint() {
        
        func compareTriplets(a: [Int], b: [Int]) -> [Int] {
            // Write your code here
            // 1번째 방법
//            var result: [Int] = [0, 0]
//            a.enumerated().forEach { (index, value) in
//                if value > b[index] {
//                    result[0] += 1
//                } else if value < b[index] {
//                    result[1] += 1
//                }
//            }
//            return result
            
            // 2번째 방법
//            var result: [Int] = [0, 0]
//            for (valueA, valueB) in zip(a, b) {
//                if valueA > valueB {
//                    result[0] += 1
//                } else if valueA < valueB {
//                    result[1] += 1
//                }
//            }
//            return result
            
            // 3번째 방법
//            var result: [Int] = [0, 0]
//            zip(a, b).forEach {
//                if $0 > $1 {
//                    result[0] += 1
//                } else if $0 < $1 {
//                    result[1] += 1
//                }
//            }
//            return result
            
            // 4번째 방법
            return zip(a, b).reduce(into: [0, 0]) { (result, value) in
                if value.0 > value.1 {
                    result[0] += 1
                } else if value.0 < value.1 {
                    result[1] += 1
                }
            }
        }

        let a = [1, 2, 3]
        let b = [3, 2, 1]

        let result = compareTriplets(a: a, b: b)
        print(result)
    }
}
