import XCTest
@testable import LeetCode2024

final class PlusOneTests: XCTestCase {
    var solution: PlusOne!
    
    override func setUp() {
        solution = .init()
    }
    
    func testPlusOne() {
        XCTAssertEqual(solution.plusOne([0]), [1])
        XCTAssertEqual(solution.plusOne([1,0]), [1,1])
        XCTAssertEqual(solution.plusOne([9]), [1,0])
        XCTAssertEqual(solution.plusOne([9,8,9,9]), [9,9,0,0])
    }
}

