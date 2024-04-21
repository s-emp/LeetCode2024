import XCTest
@testable import LeetCode2024

final class TwoSumTests: XCTestCase {
    var solution: TwoSum!
    
    override func setUp() {
        solution = TwoSum()
    }
    
    func testTwoSum() {
        XCTAssertEqual(solution.twoSum([2,7,11,15], 9), [0,1])
        XCTAssertEqual(solution.twoSum([3,2,4], 6), [1,2])
        XCTAssertEqual(solution.twoSum([3,3], 6), [0,1])
    }
}

