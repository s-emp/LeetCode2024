import XCTest
@testable import LeetCode2024

final class NextGreaterElementTests: XCTestCase {
    var solution: NextGreaterElement!
    
    override func setUp() {
        solution = .init()
    }
    
    func testNextGreaterElement() {
        XCTAssertEqual(solution.nextGreaterElement([4,1,2], [1,3,4,2]), [-1,3,-1])
        XCTAssertEqual(solution.nextGreaterElement([2,4], [1,2,3,4]), [3,-1])
        XCTAssertEqual(solution.nextGreaterElement([1], [1]), [-1])
        XCTAssertEqual(solution.nextGreaterElement([1], [1, 5, 4]), [5])
        XCTAssertEqual(solution.nextGreaterElement([1], [1, 4, 5]), [4])
        XCTAssertEqual(solution.nextGreaterElement([3], [3, 1, 5]), [5])
    }
}

