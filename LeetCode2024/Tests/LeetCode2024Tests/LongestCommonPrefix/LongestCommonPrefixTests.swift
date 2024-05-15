import XCTest
@testable import LeetCode2024

final class LongestCommonPrefixTests: XCTestCase {
    var solution: LongestCommonPrefix!
    
    override func setUp() {
        solution = .init()
    }
    
    func testLongestCommonPrefix() {
        XCTAssertEqual(solution.longestCommonPrefix(["flower","flow","flight"]), "fl")
        XCTAssertEqual(solution.longestCommonPrefix(["dog","racecar","car"]), "")
        XCTAssertEqual(solution.longestCommonPrefix(["ab", "a"]), "a")
    }
}

