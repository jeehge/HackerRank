//: Playground - noun: a place where people can play

import UIKit

// 주어진 값
var i = 4
var d = 4.0
var s = "HackerRank "

/**
 1. i 와 입력받은 int 변수의 합
 2. d 와 입력받은 double 변수의 합
 3. 입력받은 문자열 합쳐서 보여주기
 */

let inputInt = readLine()!
let inputDouble = readLine()!
let inputString = readLine()!

let valueInt = Int(inputInt)! // 입력받은 값 Int 타입으로 변환
let valueDouble = Double(inputDouble)! // 입력받은 값 Double 타입으로 변환

var intSum = valueInt + i
var doubleSum = valueDouble + d
var stringMerger = s + inputString

print(intSum)
print(doubleSum)
print(stringMerger)

