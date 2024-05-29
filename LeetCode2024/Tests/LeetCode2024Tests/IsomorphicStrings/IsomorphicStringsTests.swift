import XCTest
@testable import LeetCode2024

final class IsomorphicStringsTests: XCTestCase {
    var solution: IsomorphicStrings!
    
    override func setUp() {
        solution = .init()
    }
    
    func testIsomorphicStrings() {
        XCTAssertEqual(solution.isIsomorphic("egg", "add"), true)
        XCTAssertEqual(solution.isIsomorphic("foo", "bar"), false)
        XCTAssertEqual(solution.isIsomorphic("aw", "bar"), false)
        XCTAssertEqual(solution.isIsomorphic("badc", "baba"), false)
        XCTAssertEqual(solution.isIsomorphic("baba", "badc"), false)
    }
}

