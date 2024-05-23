import XCTest
@testable import LeetCode2024

final class ContainerWithMostWaterTests: XCTestCase {
    var solution: ContainerWithMostWater!
    
    override func setUp() {
        solution = .init()
    }
    
    func testMaxArea() {
        XCTAssertEqual(solution.maxArea([1,8,6,2,5,4,8,3,7]), 49)
        XCTAssertEqual(solution.maxArea([1,1]), 1)
        XCTAssertEqual(solution.maxArea([1,2,5,5,2,1]), 6)
        XCTAssertEqual(solution.maxArea([1,2,9,9,2,1]), 9)
    }
}

