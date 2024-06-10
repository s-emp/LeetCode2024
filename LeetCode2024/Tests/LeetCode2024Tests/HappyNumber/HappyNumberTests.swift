import XCTest
@testable import LeetCode2024

final class HappyNumberTests: XCTestCase {
    var solution: HappyNumber!
    
    override func setUp() {
        solution = .init()
    }
    
    func testIsHappy() {
        XCTAssertEqual(solution.isHappy(2), false)
        XCTAssertEqual(solution.isHappy(19), true)
    }
}

