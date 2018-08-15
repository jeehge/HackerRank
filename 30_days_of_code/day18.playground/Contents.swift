//: Playground - noun: a place where people can play
/**
 Day 18: Queues and Stacks
 */
/**
 문자열이 racecar 제대로 읽어도 거꾸로 읽어도 같다면
 => The work, s, is a palindrome.
 같지 않다면 => The word, s, is not a palindrome.
 */
import UIKit

class Solution {
    //Write your code here
    var arrStack: [Character] = []
    var arrQueue: [Character] = []
    
    // Stacks
    func pushCharacter(ch: Character) {
        arrStack.append(ch)
    }
    
    func popCharacter() -> Character {
        return arrStack.popLast()!
    }
    
    // Queues
    func enqueueCharacter(ch: Character) {
        arrQueue.append(ch)
    }
    
    func dequeueCharacter() -> Character {
        return arrQueue.removeFirst()
    }
}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s {
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character)
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false
        
        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
