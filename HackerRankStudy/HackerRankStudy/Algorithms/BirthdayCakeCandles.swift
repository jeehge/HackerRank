//
//  BirthdayCakeCandles.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/24.
//

import Foundation

class BirthdayCakeCandles {
    
    static func resultPrint() {
        /*
         * Complete the 'birthdayCakeCandles' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts INTEGER_ARRAY candles as parameter.
         */

        func birthdayCakeCandles(candles: [Int]) -> Int {
            // Write your code here
            let max = candles.max()
            return candles.filter { max == $0 }.count
        }

//        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//        let fileHandle = FileHandle(forWritingAtPath: stdout)!
//
//        guard let candlesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//        else { fatalError("Bad input") }
//
//        guard let candlesTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//
//        let candles: [Int] = candlesTemp.split(separator: " ").map {
//            if let candlesItem = Int($0) {
//                return candlesItem
//            } else { fatalError("Bad input") }
//        }
//
//        guard candles.count == candlesCount else { fatalError("Bad input") }
        
        let candles: [Int] = [3, 2, 1, 3]
        
        let result = birthdayCakeCandles(candles: candles)
        print(result)
//        fileHandle.write(String(result).data(using: .utf8)!)
//        fileHandle.write("\n".data(using: .utf8)!)

    }
}
