import XCTest
@testable import LeetCode2024

final class JumpGameTests: XCTestCase {
    var solution: JumpGame!
    
    override func setUp() {
        solution = .init()
    }
    
    func testCanJump() {
        XCTAssertEqual(solution.canJump([2,3,1,1,4]), true)
        XCTAssertEqual(solution.canJump([3,2,1,0,4]), false)
        XCTAssertEqual(solution.canJump([0,1]), false)
    }
}

