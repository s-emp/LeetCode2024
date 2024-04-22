import XCTest
@testable import LeetCode2024

final class AddTwoNumbersTests: XCTestCase {
    var solution: AddTwoNumbers!
    
    override func setUp() {
        solution = .init()
    }
    
    func testAddTwoNumbers() {
        XCTAssertEqual(
            solution.addTwoNumbers(
                [2,4,3].toListNode(),
                [5,6,4].toListNode()
            ),
            [7,0,8].toListNode()
        )
        XCTAssertEqual(
            solution.addTwoNumbers(
                [0].toListNode(),
                [0].toListNode()
            ),
            [0].toListNode()
        )
        XCTAssertEqual(
            solution.addTwoNumbers(
                [9,9,9,9,9,9,9].toListNode(),
                [9,9,9,9].toListNode()
            ),
            [8,9,9,9,0,0,0,1].toListNode()
        )
        XCTAssertEqual(
            solution.addTwoNumbers(
                [2,4,9].toListNode(),
                [5,6,4,9].toListNode()
            ),
            [7,0,4,0,1].toListNode()
        )
    }
}

