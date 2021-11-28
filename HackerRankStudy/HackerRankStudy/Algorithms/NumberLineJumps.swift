//
//  NumberLineJumps.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/29.
//

/**
 https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=true
 */
import Foundation

class NumberLineJumps {
    
    static func resultPrint() {
        /*
         * Complete the 'kangaroo' function below.
         *
         * The function is expected to return a STRING.
         * The function accepts following parameters:
         *  1. INTEGER x1
         *  2. INTEGER v1
         *  3. INTEGER x2
         *  4. INTEGER v2
         */

        func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
            // Write your code here
//            if x1 == x2 {
//                return "YES"
//            }
//
//            let diff = v1 > v2 ? v1 - v2 : v2 - v1
//            if diff == 0 {
//                return "NO"
//            }
//
//            let xdiff = x1 - x2
//            let vdiff = v2 - v1
//            if (xdiff < 0 && vdiff < 0) || (xdiff > 0 && vdiff > 0) {
//                let mod = xdiff % vdiff
//                let mod2 = vdiff % xdiff
//                if mod == 0 || mod2 == 0 {
//                    return "YES"
//                }
//            }
//            return "NO"
            var n = 0
            while n < 10000 {
                if x1 + n * v1 == x2 + n * v2 {
                    return "YES"
                }
                n += 1
            }
            return "NO"
        }
        
        // 0 2 5 3 No
        let result = kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
        print(result)
    }
}
