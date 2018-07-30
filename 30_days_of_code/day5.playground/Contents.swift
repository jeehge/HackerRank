//: Playground - noun: a place where people can play

import UIKit
import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

/**
 output
 1 <= i <= 10
 n * i = reuslt
 */
func multiple(_ inputValue:Int) -> Void {
    for i in 1...10 {
        print("\(inputValue) x \(i) = \(inputValue*i)")
    }
}

// 제약사항 2 <= n <= 20
if n>=2 && n<=20 {
    multiple(n)
}

