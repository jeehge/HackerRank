//
//  TimeConversion.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/25.
//

import Foundation

class TimeConversion {
    
    static func resultPrint() {
        /*
         * Complete the 'timeConversion' function below.
         *
         * The function is expected to return a STRING.
         * The function accepts STRING s as parameter.
         */

        func timeConversion(s: String) -> String {
            // Write your code here
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "hh:mm:ssa"
            let dateString: Date = dateFormatter.date(from: s)!
            
            dateFormatter.dateFormat = "HH:mm:ss"
            return dateFormatter.string(from: dateString)
        }
        
        guard let s = readLine() else { fatalError("Bad input") }

        let result = timeConversion(s: s)
        print(result)
    }
}
