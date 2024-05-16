import XCTest
@testable import LeetCode2024

final class ReverseWordsInStringTests: XCTestCase {
    var solution: ReverseWordsInString!
    
    override func setUp() {
        solution = .init()
    }
    
    func testReverseWords() {
        XCTAssertEqual(solution.reverseWords("Hello world"), "world Hello")
        XCTAssertEqual(solution.reverseWords("  Hello world  "), "world Hello")
        XCTAssertEqual(solution.reverseWords("  Hello  world  "), "world Hello")
        XCTAssertEqual(solution.reverseWords("  hi gay and  world  "), "world and gay hi")
    }
}

