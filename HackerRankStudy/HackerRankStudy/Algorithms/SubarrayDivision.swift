//
//  SubarrayDivision.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/09.
//

import Foundation

class SubarrayDivision: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'birthday' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts following parameters:
         *  1. INTEGER_ARRAY s
         *  2. INTEGER d
         *  3. INTEGER m
         */

        func birthday(s: [Int], d: Int, m: Int) -> Int {
            // Write your code here
            var resultCount = 0
            s[0...s.count-m].enumerated().forEach { (index, element) in
                var sum = 0
                for j in 0..<m {
                    sum += s[index + j]
                }
                if sum == d {
                    resultCount += 1
                }
            }
            return resultCount
        }
        
        let s: [Int] = [2, 2, 1, 3, 2]
        
        let d = 4

        let m = 2

        let result = birthday(s: s, d: d, m: m)
        print(result)
    }
}
