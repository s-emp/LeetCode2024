import XCTest
@testable import LeetCode2024

final class RansomNoteTests: XCTestCase {
    var solution: RansomNote!
    
    override func setUp() {
        solution = .init()
    }
    
    func testRansomNote() {
        XCTAssertEqual(solution.canConstruct("aa", "ab"), false)
        XCTAssertEqual(solution.canConstruct("aa", "aab"), true)
        XCTAssertEqual(solution.canConstruct("aa", "aba"), true)
        XCTAssertEqual(solution.canConstruct("a", "b"), false)
    }
}

