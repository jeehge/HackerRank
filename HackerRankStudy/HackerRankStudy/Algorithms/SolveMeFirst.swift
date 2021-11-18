//
//  SolveMeFirst.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/19.
//

import Foundation

class SolveMeFirst {
    
    static func resultPrint() {
        
        // read integers line by line
        let a = Int(readLine()!)!
        let b = Int(readLine()!)!
        
        // 입력한 a,b 값을 더하는 함수
        func solveMeFirst(x: Int, y: Int) -> Int {
            return x+y
        }
        
        print(solveMeFirst(x: a, y: b))
    }
}
