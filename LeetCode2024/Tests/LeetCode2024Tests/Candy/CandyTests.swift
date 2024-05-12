import XCTest
@testable import LeetCode2024

final class CandyTests: XCTestCase {
    var solution: Candy!
    
    override func setUp() {
        solution = .init()
    }
    
    func testCandy() {
        XCTAssertEqual(solution.candy([1,0,2]), 5)
        XCTAssertEqual(solution.candy([1,2,2]), 4)
        XCTAssertEqual(solution.candy([2,3,4]), 6)
        XCTAssertEqual(solution.candy([4,3,2,1]), 10)
        XCTAssertEqual(solution.candy([1,3,2,2,1]), 7)
        XCTAssertEqual(solution.candy([4,4,4,3,2,1]), 12)
    }
}

