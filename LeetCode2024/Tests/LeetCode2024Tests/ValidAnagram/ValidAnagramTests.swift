import XCTest
@testable import LeetCode2024

final class ValidAnagramTests: XCTestCase {
    var solution: ValidAnagram!
    
    override func setUp() {
        solution = .init()
    }
    
    func testValidAnagram() {
        XCTAssertEqual(solution.isAnagram("anagram", "nagaram"), true)
        XCTAssertEqual(solution.isAnagram("rat", "car"), false)
        XCTAssertEqual(solution.isAnagram("abc", "bc"), false)
    }
}

