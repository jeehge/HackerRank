//: Playground - noun: a place where people can play

import UIKit
import Foundation

/**
 Day 12: Inheritance
*/

/**
 Person 기본 클래스
 Student 클래스를 완성하세요.
 
 - 채점표
 O  90 <= a <= 100
 E  80 <= a < 90
 A  70 <= a < 80
 P  55 <= a < 70
 D  40 <= a < 55
 T  a < 40
 
 - calculate 메소드 호출 (인수를 사용하지 않음)
 
 - Sample Input
 Heraldo(firstName) Memelli(lastName) 8135627(id)
 2(테스트 점수 입력 개수)
 100 80(테스트 점수)

 - Sample Output
 Name: Memelli, Heraldo
 ID: 8135627
 Grade: O
 */

// Class Person
class Person {
    private let firstName: String   // 이름
    private let lastName: String    // 이름
    private let id: Int             // 아이디
    
    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }
    
    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student - Person의 모든 속성을 상속받음
class Student: Person {
    var testScores: [Int] = []
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        super.init(firstName: firstName, lastName: lastName, id: id)
        self.testScores = scores
    }
    
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     O  90 <= a <= 100
     E  80 <= a < 90
     A  70 <= a < 80
     P  55 <= a < 70
     D  40 <= a < 55
     T  a < 40
     */
    func calculate() -> Character {
        
        // 평균 계산
        var average:Int = 0
        var sum:Int = 0
        
        var result:Character!
        
        for score in self.testScores {
            sum += score
        }
        average = sum/self.testScores.count
        
        if average>=90 && average<=100 {
            result = "O"
        } else if average>=80 && average<90 {
            result = "E"
        } else if average>=70 && average<80 {
            result = "A"
        } else if average>=55 && average<70 {
            result = "P"
        } else if average>=40 && average<55 {
            result = "D"
        } else {
            result = "T"
        }
        
        return result
    }
    
} // End of class Student

let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
