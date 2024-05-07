import XCTest
@testable import LeetCode2024

final class RemoveElementTests: XCTestCase {
    var solution: RemoveElement!
    
    override func setUp() {
        solution = .init()
    }
    
    func testRemoveElement() {
        var num = [3,2,2,3]
        XCTAssertEqual(solution.removeElement(&num, 3), 2)
        XCTAssertEqual(num.prefix(2), [2,2])
        num = [0,1,2,2,3,0,4,2]
        XCTAssertEqual(solution.removeElement(&num, 2), 5)
        XCTAssertEqual(num.prefix(5), [0,1,4,0,3])
        num = [3,2,2,2,3]
        XCTAssertEqual(solution.removeElement(&num, 2), 2)
        XCTAssertEqual(num.prefix(2), [3,3])
        num = [3,3,2,3]
        XCTAssertEqual(solution.removeElement(&num, 3), 1)
        XCTAssertEqual(num.prefix(1), [2])
    }
}

