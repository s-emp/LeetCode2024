import XCTest
@testable import LeetCode2024

final class ValidPalindromeTests: XCTestCase {
    var solution: ValidPalindrome!
    
    override func setUp() {
        solution = .init()
    }
    
    func testIsPalindrome() {
        XCTAssertEqual(solution.isPalindrome("A man, a plan, a canal: Panama"), true)
        XCTAssertEqual(solution.isPalindrome("q"), true)
        XCTAssertEqual(solution.isPalindrome("q "), true)
        XCTAssertEqual(solution.isPalindrome("qwe"), false)
        XCTAssertEqual(solution.isPalindrome("abcba"), true)
        XCTAssertEqual(solution.isPalindrome("abcbc"), false)
        
    }
}

