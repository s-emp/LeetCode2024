import XCTest
@testable import LeetCode2024

final class MinimumSizeSubarraySumCustomTests: XCTestCase {
    var solution: MinimumSizeSubarraySumCustom!
    
    override func setUp() {
        solution = .init()
    }
    
    func testMinSubArrayLen() {
        XCTAssertEqual(solution.minSubArrayLen(7, [2,3,1,2,4,3]), 2)
        XCTAssertEqual(solution.minSubArrayLen(4, [1,3,4]), 1)
        XCTAssertEqual(solution.minSubArrayLen(5, [2,1,3]), 2)
        XCTAssertEqual(solution.minSubArrayLen(100, [2,1,3]), 0)
        XCTAssertEqual(solution.minSubArrayLen(10, [5,5]), 2)
        XCTAssertEqual(solution.minSubArrayLen(7, [2,2,2,3,3]), 3)
    }
}
