//
//  DayoftheProgrammer.swift
//  HackerRankStudy
//
//  Created by JH on 2021/12/26.
//

import Foundation

class DayoftheProgrammer: ResultPresentable {
    private func checkLeap(_ year: Int) -> Bool {
        return (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)) ? true : false
    }

    private func checkJulianLeap(_ year: Int) -> Bool {
        return (year % 4 == 0) ? true : false
    }

    func resultPrint() {
        /*
         * Complete the 'dayOfProgrammer' function below.
         *
         * The function is expected to return a STRING.
         * The function accepts INTEGER year as parameter.
         */

        func dayOfProgrammer(year: Int) -> String {
            // Write your code here
            var months = [("01", 31), ("02", 28), ("03", 31),
                          ("04", 30), ("05", 31), ("06", 30),
                          ("07", 31), ("08", 31), ("09", 30),
                          ("10", 31), ("11", 30), ("12", 31)]

            switch year {
            case 1700 ..< 1918:
                months[1] = checkJulianLeap(year) ? ("02", 29) : ("02", 28)
            case 1918:
                months[1] = ("02", 15)
            default:
                months[1] = checkLeap(year) ? ("02", 29) : ("02", 28)
            }

            var monthSum = 0
            for month in months {
                if monthSum + month.1 < 256 {
                    monthSum += month.1
                } else {
                    return "\(256 - monthSum).\(month.0).\(year)"
                }
            }

            return ""
        }

        let year = 1800
        let result = dayOfProgrammer(year: year)
        print(result)
    }
}
