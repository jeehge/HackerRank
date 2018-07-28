//: Playground - noun: a place where people can play

import UIKit
import Foundation

/**
 1. n이 홀수인 경우 Weird
 2. n이 짝수이고 2~5 사이에 있다면 Not Weird
 3. n이 짝수이고 6~20 사이에 있다면 Weird
 4. n이 짝수이고 20보다 크면 Not Weird
 */

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

func checkWeird(n inputValue:Int) -> Void {
    
    if inputValue%2 == 0 {
        if inputValue>=2 && inputValue<=5 {
            print("Not Weird")
        } else if inputValue>=6 && inputValue<=20 {
            print("Weird")
        } else {
            print("Not Weird")
        }
        
    } else {
        print("Weird")
    }
    
}

checkWeird(n:N)
