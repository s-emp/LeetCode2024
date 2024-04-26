import XCTest
@testable import LeetCode2024

final class TriangleTests: XCTestCase {
    var solution: Triangle!
    
    override func setUp() {
        solution = .init()
    }
    
    func testGenerate() {
        XCTAssertEqual(
            solution.generate(5),
            [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
        )
        XCTAssertEqual(solution.generate(1), [[1]])
    }
}

