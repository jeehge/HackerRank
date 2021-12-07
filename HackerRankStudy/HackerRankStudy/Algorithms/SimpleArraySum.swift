//
//  SimpleArraySum.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/08.
//

import Foundation

class SimpleArraySum: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'simpleArraySum' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts INTEGER_ARRAY ar as parameter.
         */

        func simpleArraySum(ar: [Int]) -> Int {
            // Write your code here
            return ar.reduce(0)  {
                $0 + $1
            }
        }
        
        let ar = [1, 2, 3, 4, 10, 11]

        let result = simpleArraySum(ar: ar)
        print(result)
    }
}
