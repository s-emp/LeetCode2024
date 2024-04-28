import XCTest
@testable import LeetCode2024

final class ConsecutiveCharactersTests: XCTestCase {
    var solution: ConsecutiveCharacters!
    
    override func setUp() {
        solution = .init()
    }
    
    func testMaxPower() {
        XCTAssertEqual(solution.maxPower("leetcode"), 2)
        XCTAssertEqual(solution.maxPower("abbcccddddeeeeedcba"), 5)
    }
}

