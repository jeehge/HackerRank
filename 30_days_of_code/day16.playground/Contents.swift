//: Playground - noun: a place where people can play

/**
 Day 16: Exceptions - String to Integer
 */
/**
 문자열 S가 정수로 변환될 수 없는 경우 Bad Stirng 출력
 */
import UIKit

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

/*
 * If typecasting is not possible, throw exception, otherwise return the Integer value
 */
func stringToInt(inputString: String) throws -> Int {
    // Write your code here
    guard let inputValue=Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    
    return inputValue
}

/*
 * Read the input
 */
let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
