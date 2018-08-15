//: Playground - noun: a place where people can play
/**
 Day 20: Sorting
 - Bubble Sort algorithm
 - 오름차순 정렬
 */

/**
 numSwaps : 변경된 수
 first element : 정렬된 배열의 첫번째 요소
 last element : 정렬된 배열의 마지막 요소
 */
import UIKit

// read the integer n
let n = Int(readLine()!)!

// read the array
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var numSwaps:Int = 0

for _ in 0...n {
    for j in 0..<n-1 {
        if arr[j]>arr[j+1] {
            let temp = arr[j]
            arr[j]=arr[j+1]
            arr[j+1]=temp
            numSwaps += 1
        }
    }
}

print("Array is sorted in \(numSwaps) swaps.")
print("First Element:\(arr[0])")
print("Last Element:\(arr[n-1])")
