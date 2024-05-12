import XCTest
@testable import LeetCode2024

final class TrappingRainWaterTests: XCTestCase {
    var solution: TrappingRainWater!
    
    override func setUp() {
        solution = .init()
    }
    
    func testTrap() {
        XCTAssertEqual(solution.trap([0,1,0,2,1,0,1,3,2,1,2,1]), 6)
        XCTAssertEqual(solution.trap([4,2,0,3,2,5]), 9)
        XCTAssertEqual(solution.trap([1,2]), 0)
        XCTAssertEqual(solution.trap([9]), 0)
        XCTAssertEqual(solution.trap([9,9,9]), 0)
    }
}

