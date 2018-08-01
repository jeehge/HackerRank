//: Playground - noun: a place where people can play

/**
 Day 7: Arrays
 */
import UIKit
import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }


/**
 n개의 정수 중 공백으로 구분된 숫자 배열을 반대 순서로 출력
 */
var arrChange:[Int]=[]

for i in 0...n-1 {
    arrChange.insert(arr[n-1-i], at: i)
    print(arrChange[i], terminator: " ")
}


