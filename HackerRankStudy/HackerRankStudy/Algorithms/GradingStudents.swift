//
//  GradingStudents.swift
//  HackerRankStudy
//
//  Created by JH on 2021/11/25.
//

import Foundation

class GradingStudents {
    
    static func resultPrint() {
        /*
         * Complete the 'gradingStudents' function below.
         *
         * The function is expected to return an INTEGER_ARRAY.
         * The function accepts INTEGER_ARRAY grades as parameter.
         */

        func gradingStudents(grades: [Int]) -> [Int] {
            // Write your code here
            var result: [Int] = []
            grades.forEach { number in
                let multipleOfFive = ((number / 5) * 5 ) + 5
                let value = multipleOfFive - number
                if number < 40 {
                    result.append(number)
                } else if value >= 3 {
                    result.append(number)
                } else {
                    result.append(multipleOfFive)
                }
            }
            return result
        }
        
        let grades: [Int] = [73, 67, 38, 33]
        let result = gradingStudents(grades: grades)
        print(result)
    }
}
