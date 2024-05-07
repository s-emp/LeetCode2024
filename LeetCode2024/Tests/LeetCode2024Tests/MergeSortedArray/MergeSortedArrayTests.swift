import XCTest
@testable import LeetCode2024

final class MergeSortedArrayTests: XCTestCase {
    var solution: MergeSortedArray!
    
    override func setUp() {
        solution = .init()
    }
    
    func testMerge() {
        var num1 = [1,2,3,0,0,0]
        var num2 = [2,5,6]
        solution.merge(&num1, 3, num2, 3)
        XCTAssertEqual(num1, [1,2,2,3,5,6])
        num1 = [1]
        num2 = []
        solution.merge(&num1, 1, num2, 0)
        XCTAssertEqual(num1, [1])
        num1 = [0]
        num2 = [1]
        solution.merge(&num1, 0, num2, 1)
        XCTAssertEqual(num1, [1])
    }
}

