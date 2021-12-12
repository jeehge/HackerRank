//
//  SuperReducedString.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/11.
//

import Foundation

class SuperReducedString: ResultPresentable {
    func resultPrint() {
        /*
         * Complete the 'superReducedString' function below.
         *
         * The function is expected to return a STRING.
         * The function accepts STRING s as parameter.
         */

        func superReducedString(s: String) -> String {
            // Write your code here
            var mirror: [Character?] = s.map { $0 }
            var check: Character?
            var flag = true

            while flag {
                flag = false
                for (index, character) in mirror.enumerated() {
                    if check != nil, check! == character {
                        mirror[index - 1] = nil
                        mirror[index] = nil
                        check = nil
                        flag = true
                    } else {
                        check = character
                    }
                }
                check = nil
                let temp = mirror.compactMap { $0 }
                mirror = temp
            }

            var result = ""
            mirror.compactMap({$0}).forEach { result.append($0) }
            return result.isEmpty ? "Empty String" : result
        }
        
        let s = "aa"
        let result = superReducedString(s: s)
        print(result)
    }
}
