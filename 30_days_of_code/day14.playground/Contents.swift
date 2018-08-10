//: Playground - noun: a place where people can play

/**
Day 14: Scope
*/

import UIKit

/**
 1. Difference 생성자는 정수배열을 받아 elements에 저장
 2. computeDifference 메서드는 N의 두 숫자 사이의 최대 절대 차이를 찾아 maximumDifference 변수에 저장
 */
class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    
    // elements setting
    required init(a: [Int]) {
        maximumDifference = 0
        for arr in a {
            elements.append(arr)
        }
    }
    
    func computeDifference() -> Void {
        var result:Int!
        for arr in elements {
            for i in 0...elements.count-1 {
                result = arr - elements[i]
                
                if result < 0 {
                    result = result * -1 // 정수값
                }
                
                if maximumDifference < result || maximumDifference == 0 {
                    maximumDifference = result
                }
            }
        }
    }
} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
