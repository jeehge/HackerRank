//
//  BetweenTwoSets.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/29.
//

/**
 https://www.hackerrank.com/challenges/between-two-sets/problem?isFullScreen=true
 */
import Foundation

protocol ResultPresentable: AnyObject {
    func resultPrint()
}

class BetweenTwoSets: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'getTotalX' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts following parameters:
         *  1. INTEGER_ARRAY a
         *  2. INTEGER_ARRAY b
         */
        
        // 최대공약수
        func gcd(_ a: Int, _ b: Int) -> Int {
            if b == 0 {
                return a
            } else {
                return gcd(b, a%b)
            }
        }
        
        // 최소공배수
        func lcm(_ a: Int, _ b: Int) -> Int {
            return a * b / gcd(a, b)
        }
        
        
        func getTotalX(a: [Int], b: [Int]) -> Int {
            // Write your code here
            var lcmNumber: Int = a.count > 1 ? lcm(a[0], a[1]) : a[0]
            var gcdNumber: Int = b.count > 1 ? gcd(b[0], b[1]) : b[0]
            
            if a.count > 2 {
                for idx in 2..<a.count {
                    lcmNumber = lcm(a[idx], lcmNumber)
                }
            }
            if b.count > 2 {
                for idx in 2..<b.count {
                    gcdNumber = gcd(b[idx], gcdNumber)
                }
            }
            
            var now: Int = lcmNumber
            var ans = 0
            while now <= gcdNumber {
                var check: Bool = true
                for number in b {
                    if number % now != 0 {
                        check = false
                        break
                    }
                }
                
                if check {
                    ans += 1
                }
                now += lcmNumber
            }
            
            return ans
        }
        
        //  [2, 4] [16, 32, 96]
        //
        let total = getTotalX(a: [100, 99, 98, 97, 96, 95, 94, 93, 92, 91], b: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        print(total)
    }
}
