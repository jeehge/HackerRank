import Foundation

/**
 Day 10: Binary Numbers
 */
guard var n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

/**
 1. 10진수 정수 n 을 2진수로 변환
 2. 2진수에서 최대 연속 1의 수를 출력
 ex.5의 이진 표현은 101이므로 연속 1의 최대 수는 1입니다.
 ex.13의 이진 표현은 1101이므로 연속 1의 최대 수는 2입니다.
 */
var count:Int = 0
var repetitionCount:Int = 0

// 제약조건 1<=n<=1000000
while n>=1 && n<=1000000 {
    if n%2==1 {
        count+=1
        if count>repetitionCount {
            repetitionCount = count
        }
    } else {
        count = 0
    }
    
    n=n/2
}

print(repetitionCount)


