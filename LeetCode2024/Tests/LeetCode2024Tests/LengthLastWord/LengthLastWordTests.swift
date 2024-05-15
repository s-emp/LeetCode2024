import XCTest
@testable import LeetCode2024

final class LengthLastWordTests: XCTestCase {
    var solution: LengthLastWord!
    
    override func setUp() {
        solution = .init()
    }
    
    func testLengthOfLastWord() {
        XCTAssertEqual(solution.lengthOfLastWord("Hello world"), 5)
        XCTAssertEqual(solution.lengthOfLastWord("Hello a"), 1)
        XCTAssertEqual(solution.lengthOfLastWord("Hello"), 5)
        XCTAssertEqual(solution.lengthOfLastWord("   fly me   to   the moon  "), 4)
    }
}

