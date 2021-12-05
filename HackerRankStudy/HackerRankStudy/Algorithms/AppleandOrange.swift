//
//  AppleandOrange.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/04.
//

import Foundation

class AppleandOrange: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'countApplesAndOranges' function below.
         *
         * The function accepts following parameters:
         *  1. INTEGER s
         *  2. INTEGER t
         *  3. INTEGER a
         *  4. INTEGER b
         *  5. INTEGER_ARRAY apples
         *  6. INTEGER_ARRAY oranges
         */

        func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
            // Write your code here
            var apple: (path: [Int], result: [Int]) = ([], [])
            var orange: (path: [Int], result: [Int]) = ([], [])
            
            apple.path = apples.map { a + $0 }
            orange.path = oranges.map { b + $0 }
            
            apple.result = apple.path.filter { s <= $0 && t >= $0 }
            orange.result = orange.path.filter { s <= $0 && t >= $0 }
            
            print("\(apple.result.count)\n\(orange.result.count)")
        }

//        guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//        let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }
//
//        guard let s = Int(firstMultipleInput[0])
//        else { fatalError("Bad input") }
//
//        guard let t = Int(firstMultipleInput[1])
//        else { fatalError("Bad input") }
//
//        guard let secondMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//        let secondMultipleInput = secondMultipleInputTemp.split(separator: " ").map{ String($0) }
//
//        guard let a = Int(secondMultipleInput[0])
//        else { fatalError("Bad input") }
//
//        guard let b = Int(secondMultipleInput[1])
//        else { fatalError("Bad input") }
//
//        guard let thirdMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//        let thirdMultipleInput = thirdMultipleInputTemp.split(separator: " ").map{ String($0) }
//
//        guard let m = Int(thirdMultipleInput[0])
//        else { fatalError("Bad input") }
//
//        guard let n = Int(thirdMultipleInput[1])
//        else { fatalError("Bad input") }
//
//        guard let applesTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//
//        let apples: [Int] = applesTemp.split(separator: " ").map {
//            if let applesItem = Int($0) {
//                return applesItem
//            } else { fatalError("Bad input") }
//        }
//
//        guard apples.count == m else { fatalError("Bad input") }
//
//        guard let orangesTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//
//        let oranges: [Int] = orangesTemp.split(separator: " ").map {
//            if let orangesItem = Int($0) {
//                return orangesItem
//            } else { fatalError("Bad input") }
//        }
        let s = 7
        let t = 11
        let a = 5
        let b = 15
        let apples = [-2, 2, 1]
        let oranges = [5, -6]
        
        countApplesAndOranges(s: s, t: t, a: a, b: b, apples: apples, oranges: oranges)
    }
}
