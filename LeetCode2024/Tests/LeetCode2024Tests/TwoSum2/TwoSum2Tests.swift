import XCTest
@testable import LeetCode2024

final class TwoSum2Tests: XCTestCase {
    var solution: TwoSum2!
    
    override func setUp() {
        solution = .init()
    }
    
    func testTwoSum() {
        XCTAssertEqual(solution.twoSum([2,3,4], 6), [1,3])
        XCTAssertEqual(solution.twoSum([-1,0,1], -1), [1,2])
        XCTAssertEqual(solution.twoSum([2,7,11,15], 9), [1,2])
    }
}

