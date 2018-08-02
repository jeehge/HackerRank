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
// Dictionary (key, value)
var phoneBook:Dictionary = [String:String]()

// 전화번호 항목 수를 나타내는 정수
guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

// 제약조건 1 <= n <= 100000
if n>=1 && n<=100000 {
    // 입력받은 값을 저장
    for _ in 1...n {
        guard let inputValue = readLine() else { fatalError("Bad input") }
        let info = inputValue.split(separator: " ").map{(value)-> String in
            return String(value)
        }
        // Dictionary에 값 추가
        phoneBook.updateValue(info[1], forKey: info[0])
    }
    // key 값 입력받아 비교
    for i in 0...n-1 {
        guard let inputName:String = readLine() else { fatalError("Bad input") }
        var keys:[String] = phoneBook.map { (tuple:(String, String)) -> String in
            return tuple.0
        }
        if inputName == keys[i] {
            print("\(inputName)=\(phoneBook[inputName]!)")
        } else {
            print("Not found")
        }
        
    }
}
