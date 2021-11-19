//: Playground - noun: a place where people can play

import UIKit

var a = Int(readLine()!)!
var b = Int(readLine()!)!

// 입력한 a,b 값을 더하는 함수
func solveMeFirst(x: Int, y: Int) -> Int {
    return x+y
}

print(solveMeFirst(x: a, y: b))

import Foundation

// Complete the permutationEquation function below.
func permutationEquation(p: [Int]) -> [Int] {
    var a = [0]
    a = a + p
    var re :[Int] = []
    for x in (1...p.count){
        for y in (1...p.count){
            if a[a[y]]==x{
                re.append(y)
            }
        }
    }
    return(re)

}

