import XCTest
@testable import LeetCode2024

final class ValidParenthesesTests: XCTestCase {
    var solution: ValidParentheses!
    
    override func setUp() {
        solution = .init()
    }
    
    func testIsValid() {
        XCTAssertEqual(solution.isValid("[]"), true)
        XCTAssertEqual(solution.isValid("[(]"), false)
        XCTAssertEqual(solution.isValid("["), false)
    }
}

