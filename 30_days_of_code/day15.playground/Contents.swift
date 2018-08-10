//: Playground - noun: a place where people can play
/**
 Day 15: Linked List
 */

/**
 새 Node는 생성자를 통해 만듬
 
 initial : head -> null
 T0 : head -> data = 2, null
 T1 : head -> data = 2, n1 -> data = 3, null
 T2 : head -> data = 2, n1 -> data = 3, n2 -> data = 4, null
 T3: head -> data = 2, n1 -> data = 3, n2 -> data = 4, n3 -> data = 1, nil
 */
import UIKit

class Node {
    let data: Int   // 실제 데이터
    var next: Node? // 다음 노드를 의미, 노드에 대한 포인터(?)

    init(data: Int) {
        self.data = data
    }
}

// 노드 추가 함수
func insert(head: Node?, data: Int!) -> Node? {
    
    var head = head
    if head == nil {
        head = Node(data: data)
    } else {
        var currentNode:Node = head!
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        currentNode.next = Node(data: data)
    }
    return head
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = 1// Int(readLine()!)!

for _ in 0..<1 {
    let element = 5 //Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
