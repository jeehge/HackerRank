//
//  Staircase.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/22.
//

import Foundation

class Staircase {
    
    static func resultPrint() {
        /*
         * Complete the 'staircase' function below.
         *
         * The function accepts INTEGER n as parameter.
         */

        func staircase(n: Int) -> Void {
            // Write your code here
            var stairs = String()
            for step in (1...n).reversed() {
                stairs += String(repeating: " ", count: step - 1) + String(repeating: "#", count: n + 1 - step) + "\n"
            }
            print(stairs)
        }

        guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }

        staircase(n: n)
    }
}
