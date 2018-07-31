//: Playground - noun: a place where people can play

/**
 Day 6: Let's Review
 */
import Foundation
import Darwin

let numStrings = Int(readLine()!)!

/**
 문자열 S(ex. Hacker) -> (Hce akr)
 index 짝수인 문자와 홀수인 문자를 공백으로 구분하여 출력
 */
func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)

    let arrString = Array(string)
    // Print the even-indexed characters
    // Write your code here
    var arrEven:Array<Character> = Array()
    var arrOld:Array<Character> = Array()
    
    // 제약조건 2 <= length of S <= 10000
    if string.count>=2 && string.count<=10000 {
        for i in 0...string.count-1 {
            if i%2==0 {
                arrEven.append(arrString[i])
            } else {
                arrOld.append(arrString[i])
            }
        }
    }
    
    // Print a space
    // terminator 줄내림을 " "공백으로!
    print(String(arrEven), String(arrOld), terminator: " ")

    // Print a newline
    print()
}

// 제약조건 1 <= T <= 10
if numStrings>=1 && numStrings<=10 {
    for _ in 1...numStrings {
        //    let inputString = readLine()!
        let inputString:String = "Hacker"
        printEvenAndOdd(string: inputString)
    }
}



