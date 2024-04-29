import XCTest
@testable import LeetCode2024

final class LongestSubstringTests: XCTestCase {
    var solution: LongestSubstring!
    
    override func setUp() {
        solution = .init()
    }
    
    func testLongestSubstring() {
        XCTAssertEqual(solution.lengthOfLongestSubstring("abcabcbb"), 3)
        XCTAssertEqual(solution.lengthOfLongestSubstring("bbbbb"), 1)
        XCTAssertEqual(solution.lengthOfLongestSubstring("pwwkewke"), 3)
        XCTAssertEqual(solution.lengthOfLongestSubstring(""), 0)
        XCTAssertEqual(solution.lengthOfLongestSubstring("abc"), 3)
        XCTAssertEqual(solution.lengthOfLongestSubstring("abcc12c34"), 5)
        XCTAssertEqual(solution.lengthOfLongestSubstring("bcba"), 3)
    }
}

