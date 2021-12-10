//
//  CamelCase.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/10.
//

import Foundation

class CamelCase: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'camelcase' function below.
         *
         * The function is expected to return an INTEGER.
         * The function accepts STRING s as parameter.
         */

        func camelcase(s: String) -> Int {
            // Write your code here
            // 65: A 90: Z
            return s.filter { Int($0.asciiValue ?? 0) >= 65 && Int($0.asciiValue ?? 0) <= 90 }.count + 1
        }
//
//        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//        let fileHandle = FileHandle(forWritingAtPath: stdout)!
//
//        guard let s = readLine() else { fatalError("Bad input") }
        let s = "saveChangesInTheEditor"

        let result = camelcase(s: s)
        print(result)
//        fileHandle.write(String(result).data(using: .utf8)!)
//        fileHandle.write("\n".data(using: .utf8)!)

    }
}
