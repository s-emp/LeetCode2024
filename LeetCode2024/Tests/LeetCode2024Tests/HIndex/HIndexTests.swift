import XCTest
@testable import LeetCode2024

final class HIndexTests: XCTestCase {
    var solution: HIndex!
    
    override func setUp() {
        solution = .init()
    }
    
    func testHIndex() {
        XCTAssertEqual(solution.hIndex([3,0,6,1,5]), 3)
        XCTAssertEqual(solution.hIndex([3,0,6,1]), 2)
        XCTAssertEqual(solution.hIndex([1,3,1]), 1)
        XCTAssertEqual(solution.hIndex([3,0,6,1,5]), 3)
        XCTAssertEqual(solution.hIndex([1]), 1)
        XCTAssertEqual(solution.hIndex([3]), 1)
        XCTAssertEqual(solution.hIndex([5,6]), 2)
        XCTAssertEqual(solution.hIndex([1,2,3,4,5]), 3)
        XCTAssertEqual(solution.hIndex([0]), 0)
    }
}

