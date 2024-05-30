import XCTest
@testable import LeetCode2024

final class WordPatternTests: XCTestCase {
    var solution: WordPattern!
    
    override func setUp() {
        solution = .init()
    }
    
    func testWordPattern() {
        XCTAssertEqual(solution.wordPattern("abba", "dog cat cat dog"), true)
        XCTAssertEqual(solution.wordPattern("abba", "dog cat cat fish"), false)
        XCTAssertEqual(solution.wordPattern("abba", "cat cat cat cat "), false)
    }
}

