//: Playground - noun: a place where people can play

import UIKit

import Foundation

// Complete the aVeryBigSum function below.
func aVeryBigSum(ar arrInt: [Int]) -> Int {
    var result:Int = 0;
    for i in 0..<arrInt.count {
        result += arrInt[i]
    }
    
    return result
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]! // OUTPUT_PATH ??
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
// file handle 반환
let fileHandle = FileHandle(forWritingAtPath: stdout)!

// 공백 제거
guard let arCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let arTemp = readLine() else { fatalError("Bad input") }
let ar: [Int] = arTemp.split(separator: " ").map {
    if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arItem
    } else { fatalError("Bad input") }
}

guard ar.count == arCount else { fatalError("Bad input") }

let result = aVeryBigSum(ar: ar)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
