import XCTest
@testable import LeetCode2024

final class MaximumSubarrayTests: XCTestCase {
    var solution: MaximumSubarray!
    
    override func setUp() {
        solution = .init()
    }
    
    func testMaximumSubarray() {
        XCTAssertEqual(solution.maxSubArray([-2,1,-3,4,-1,2,1,-5,4]), 6)
        XCTAssertEqual(solution.maxSubArray([1]), 1)
        XCTAssertEqual(solution.maxSubArray([5,4,-1,7,8]), 23)
    }
}

