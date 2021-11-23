//
//  MinMaxSum.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/24.
//

import Foundation

class MinMaxSum {
    
    static func resultPrint() {
        /*
         * Complete the 'miniMaxSum' function below.
         *
         * The function accepts INTEGER_ARRAY arr as parameter.
         */

        func miniMaxSum(arr: [Int]) -> Void {
            // Write your code here
            // let minSum: Int = arr.filter { $0 != arr.max() }.reduce(0) { $0 + $1 }
            // let maxSum: Int = arr.filter { $0 != arr.min() }.reduce(0) { $0 + $1 }
            // print("\(minSum) \(maxSum)")
            
            var minArray = arr.sorted()
            var maxArray = arr.sorted()
                    
            minArray.removeLast()
            maxArray.removeFirst()
                    
            let minSum: Int = minArray.reduce(0) { $0 + $1 }
            let maxSum: Int = maxArray.reduce(0) { $0 + $1 }
            print("\(minSum) \(maxSum)")
        }

//        guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//
//        let arr: [Int] = arrTemp.split(separator: " ").map {
//            if let arrItem = Int($0) {
//                return arrItem
//            } else { fatalError("Bad input") }
//        }
//
//        guard arr.count == 5 else { fatalError("Bad input") }

        let arr: [Int] = [1, 2, 3, 4, 5]
        miniMaxSum(arr: arr)

    }
}
