//: Playground - noun: a place where people can play
/**
 Day 17: More Exceptions
 */
import UIKit

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    // n을 p만큼 곱하라
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        if p<0 || n<0{
            throw RangeError.NotInRange("n and p should be non-negative")
        }
        // 
        return Int(pow(Double(n), Double(p)))
    } // End of function power
} // End of class Calculator

// t: 몇개를 입력받을 지 받는 변수
let myCalculator = Calculator()
let t = Int(readLine()!)!

for _ in 0..<t {
    let np = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let n = np[0]
    let p = np[1]
    
    do {
        let ans = try myCalculator.power(n: n, p: p)
        print(ans)
    } catch RangeError.NotInRange(let errorMsg) {
        print(errorMsg)
    }
}
