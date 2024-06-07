import XCTest
@testable import LeetCode2024

final class PermutationStringTests: XCTestCase {
    var solution: PermutationString!
    
    override func setUp() {
        solution = .init()
    }
    
    func testCheckInclustion() {
        XCTAssertEqual(solution.checkInclusion("ab", "abab"), true)
        XCTAssertEqual(solution.checkInclusion("abc", "ab"), false)
        XCTAssertEqual(solution.checkInclusion("ab", "ba"), true)
        XCTAssertEqual(solution.checkInclusion("aa", "abc"), false)
        XCTAssertEqual(solution.checkInclusion("aabb", "abaabc"), true)
        XCTAssertEqual(solution.checkInclusion("a", "bcbcab"), true)
        XCTAssertEqual(solution.checkInclusion("ab", "cba"), true)
    }
}

