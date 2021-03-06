//
//  StackTests.swift
//  TowerOfHanoi
//
//  Created by BARRY EZELL on 6/17/14.
//

import XCTest

class StackTests: XCTestCase {
    var stack = Stack()
    
    override func setUp() {
        super.setUp()
        stack = Stack()
    }
    
    func testPush() {
        stack.push(2)
        XCTAssert(stack.disks == [2], "Stack should push items")
        stack.push(1)
        XCTAssert(stack.disks == [2, 1], "Stack should push items")
    }
    
    func testPop() {
        XCTAssert(stack.pop() == nil, "Stack should be empty")
        stack.push(2)
        stack.push(1)
        XCTAssert(stack.pop() == 1, "Stack should return last item")
    }
    
    func testPeek() {
        stack.push(1)
        XCTAssert(stack.peek() == 1, "Stack can peek at items")
        stack.pop()
        XCTAssert(stack.peek() == nil, "Stack should returns nil when no items left to peek")
    }
    
    func testInitWithDisks() {
        stack = Stack(diskCount: 4)
        XCTAssert(stack.pop() == 1, "Stack should init with disks")
        XCTAssert(stack.pop() == 2, "Stack should init with disks in descending order")
    }
    
    func testStackEquatable() {
        var stack0 = Stack(diskCount: 2)
        var stack1 = Stack(diskCount: 2)
        XCTAssert(stack0 == stack1, "Stacks can be compared with ==")
    }
}
