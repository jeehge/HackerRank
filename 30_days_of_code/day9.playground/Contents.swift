//: Playground - noun: a place where people can play

/**
 Day 9: Recursion
 */
import UIKit
import Foundation

/**
  Factorial
 - 자연수의 계승
 - 1부터 n까지의 모든 수를 곱한다
 1. 재귀함수가 존재해야 함
 */
// Complete the factorial function below.
func factorial(n: Int) -> Int {
    if n<2 { return n }
    else { return n*factorial(n:n-1) }
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = factorial(n:n)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)


