
import XCTest
@testable import LeetCode2024

final class FirstIndexStrInStrTests: XCTestCase {
    var solution: FirstIndexStrInStr!
    
    override func setUp() {
        solution = .init()
    }
    
    func testStrStr() {
        XCTAssertEqual(solution.strStr("leetcode", "leetee"), -1)
        XCTAssertEqual(solution.strStr("sadbutsad", "sad"), 0)
        XCTAssertEqual(solution.strStr("eeeeel", "eeel"), 2)
    }
}

