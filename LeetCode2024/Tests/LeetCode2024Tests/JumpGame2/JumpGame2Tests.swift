import XCTest
@testable import LeetCode2024

final class JumpGame2Tests: XCTestCase {
    var solution: JumpGame2!
    
    override func setUp() {
        solution = .init()
    }
    
    func testJump() {
        XCTAssertEqual(solution.jump([2,3,1,1,4]), 2)
        XCTAssertEqual(solution.jump([2,2,1,1]), 2)
        XCTAssertEqual(solution.jump([0]), 0)
        XCTAssertEqual(solution.jump([3,2,1,0]), 1)
    }
}

