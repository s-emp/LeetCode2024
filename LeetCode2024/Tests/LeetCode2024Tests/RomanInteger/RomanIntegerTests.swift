import XCTest
@testable import LeetCode2024

final class RomanIntegerTests: XCTestCase {
    var solution: RomanInteger!
    
    override func setUp() {
        solution = .init()
    }
    
    func testRomanToInt() {
        XCTAssertEqual(solution.romanToInt("III"), 3)
        XCTAssertEqual(solution.romanToInt("LVIII"), 58)
        XCTAssertEqual(solution.romanToInt("MCMXCIV"), 1994)
    }
}

