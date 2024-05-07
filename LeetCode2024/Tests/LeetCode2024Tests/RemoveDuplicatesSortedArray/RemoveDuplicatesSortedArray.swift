import XCTest
@testable import LeetCode2024

final class RemoveDuplicatesSortedArrayTests: XCTestCase {
    var solution: RemoveDuplicatesSortedArray!
    
    override func setUp() {
        solution = .init()
    }
    
    func testRemoveDuplicatesSortedArray() {
        var num = [1,1,2]
        XCTAssertEqual(solution.removeDuplicates(&num), 2)
        XCTAssertEqual(num.prefix(2), [1,2])
        num = [0,0,1,1,1,2,2,3,3,4]
        XCTAssertEqual(solution.removeDuplicates(&num), 5)
        XCTAssertEqual(num.prefix(5), [0,1,2,3,4])
    }
}

