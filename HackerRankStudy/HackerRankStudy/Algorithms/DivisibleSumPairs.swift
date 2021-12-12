//
//  DivisibleSumPairs.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/09.
//

import Foundation

class DivisibleSumPairs: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'divisibleSumPairs' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts following parameters:
         *  1. INTEGER n
         *  2. INTEGER k
         *  3. INTEGER_ARRAY ar
         */

        func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
            // Write your code here
            var count = 0

            for i in 0..<n {
                for j in 0..<n {
                    let a = ar[i] + ar[j]
                    if i < j  &&  a % k  ==  0{
                        count += 1
                    }
                }
            }

            return count
        }

        let n: Int = 6
        let k: Int = 3
        let ar = [1, 3, 2, 6, 1, 2]
        let result = divisibleSumPairs(n: n, k: k, ar: ar)
        print(result)
    }
}
