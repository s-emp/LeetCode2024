import XCTest
@testable import LeetCode2024

final class IsSubsequenceTests: XCTestCase {
    var solution: IsSubsequence!
    
    override func setUp() {
        solution = .init()
    }
    
    func testIsSubsequence() {
        XCTAssertEqual(solution.isSubsequence("abc", "ahbgdc"), true)
        XCTAssertEqual(solution.isSubsequence("axc", "ahbgdc"), false)
    }
}

