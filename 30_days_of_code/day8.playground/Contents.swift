//: Playground - noun: a place where people can play

/**
 Day 8: Dictionaries and Maps
 */
import UIKit
import Foundation

/**
 이름과 전화번호 입력 -> 전화번호부에 저장
 이름을 입력했을 때 전화번호부에 존재한다면
 "이름=번호"로 출력
 이름을 입력했을 때 전화번호부에 존재하지 않는다면
 Not found 출력
 */

// [String: String] -> Dictionary<String, String> 축약표현
var phoneBook = Dictionary<String,String>()

// n : 전화번호 항목 수를 나타내는 정수
if let input = readLine(), let n = Int(input) {
    for _ in 1...n {
        if let input = readLine() {
            let info = input.split(separator: " ").map(String.init)
            let name = info[0]
            let phoneNumber = info[1]
            phoneBook[name] = phoneNumber
        }
    }
    
    if let inputName = readLine() {
        var name = String(inputName)
        
        // do ~ while
        repeat {
            if let phoneNumber = phoneBook[name] {
                print("\(name)=\(phoneNumber)")
            } else {
                print("Not found")
            }
            
            if let inputName = readLine() {
                name = String(inputName)
            } else {
                name = ""
            }
        } while name.count > 0
    }
}
