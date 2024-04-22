import XCTest
@testable import LeetCode2024

final class PhoneNumberTests: XCTestCase {
    var solution: PhoneNumber!
    
    override func setUp() {
        solution = .init()
    }
    
    func testLetterCombinations() {
        XCTAssertEqual(
            solution.letterCombinations("23"),
            ["ad","ae","af","bd","be","bf","cd","ce","cf"]
        )
        XCTAssertEqual(
            solution.letterCombinations(""),
            []
        )
        XCTAssertEqual(
            solution.letterCombinations("2"),
            ["a","b","c"]
        )
    }
}

