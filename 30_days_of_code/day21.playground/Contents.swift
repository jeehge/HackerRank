//: Playground - noun: a place where people can play

/**
 Day 21: Generics
 입력받은 것 그대로 출력 
 */
import UIKit

struct Printer<T> {
    /**
     *    Name: printArray
     *    Print each element of the generic array on a new line. Do not return anything.
     *    @param A generic array
     **/
    
    // Write your code here
    func printArray(array: [T]) {
        for arr in array {
            print(arr)
        }
    }
}


var n = Int(readLine()!)!
var intArray = Array(repeating: 0, count: n);
for i in 0...n - 1 {
    intArray[i] = Int(readLine()!)!;
}

n = Int(readLine()!)!
var stringArray = Array(repeating: "", count: n);
for i in 0...n - 1 {
    stringArray[i] = readLine()!;
}

Printer<Int>().printArray(array: intArray)
Printer<String>().printArray(array: stringArray)