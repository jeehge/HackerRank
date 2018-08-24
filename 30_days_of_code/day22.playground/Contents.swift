//: Playground - noun: a place where people can play
/**
 Day 22: Binary Search Trees
 */
import UIKit

// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }

    // Binary Search Trees 높이 검색
    func getHeight(root: Node?) -> Int {
        if root == nil {
            return -1
        }
        
        let leftHeight = getHeight(root: root!.left) + 1
        let rightHeight = getHeight(root: root!.right) + 1
        
        // 비교 가능한 값 중 가장 큰 값을 반환한다
        return max(leftHeight, rightHeight)
    } // End of getHeight function

} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))

