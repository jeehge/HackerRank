//: Playground - noun: a place where people can play
/**
 Day 4: Class vs. Instance
 */

import UIKit
import Foundation

class Person {
    var age: Int = 0
    
    init(initialAge: Int) {
        // Add some more code to run some checks on initialAge
        if initialAge < 0 {
            print("Age is not valid, setting age to 0.")
            age = 0
        } else {
            age = initialAge
        }
    }
    
    /** 문장출력
     1. age<13 print You are young
     2. age>=13 and age<18 print You are a teenager
     3. Otherwisy, print You are old
     */
    func amIOld() {
        // Do some computations in here and print out the correct statement to the console
        if age<13 {
            print("You are young")
        } else if age>=13 && age<18 {
            print("You are a teenager")
        } else {
            print("You are old")
        }
        
    }
    
    /**
     age를 1씩 늘린다
     */
    func yearPasses() {
        // Increment the age of the person in here
        age += 1
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let age = Int(readLine()!)!
    let p = Person(initialAge: age)
    
    p.amIOld()
    
    for _ in 1...3 {
        p.yearPasses()
    }
    
    p.amIOld()
    
    print("")
}
