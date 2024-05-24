import XCTest
@testable import LeetCode2024

final class ThreeSumTests: XCTestCase {
    var solution: ThreeSum!
    
    override func setUp() {
        solution = .init()
    }
    
    func testThreeSum() {
        XCTAssertEqual(solution.threeSum([0,1,1]), [])
        XCTAssertEqual(solution.threeSum([0,0,0]), [[0,0,0]])
        XCTAssertEqual(solution.threeSum([-1,0,1,2,-1,-4]), [[-1,-1,2],[-1,0,1]])
    }
}

