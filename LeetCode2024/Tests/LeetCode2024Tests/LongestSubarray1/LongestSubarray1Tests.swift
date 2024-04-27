import XCTest
@testable import LeetCode2024

final class LongestSubarray1Tests: XCTestCase {
    var solution: LongestSubarray1!
    
    override func setUp() {
        solution = .init()
    }
    
    func testLongestSubarray1() {
        XCTAssertEqual(solution.longestSubarray([1,1,0,1]), 3)
        XCTAssertEqual(solution.longestSubarray([0,1,1,1,0,1,1,0,1]), 5)
        XCTAssertEqual(solution.longestSubarray([1,1,1]), 2)
    }
}

