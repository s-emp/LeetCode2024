import XCTest
@testable import LeetCode2024

final class MajorityElementTests: XCTestCase {
    var solution: MajorityElement!
    
    override func setUp() {
        solution = .init()
    }
    
    func testMajorityElement() {
        XCTAssertEqual(solution.majorityElement([3,2,3]), 3)
        XCTAssertEqual(solution.majorityElement([2,2,1,1,1,2,2]), 2)
    }
}

