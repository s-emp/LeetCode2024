import XCTest
@testable import LeetCode2024

final class IntegerRomanTests: XCTestCase {
    var solution: IntegerRoman!
    
    override func setUp() {
        solution = .init()
    }
    
    func testIntToRoman() {
        XCTAssertEqual(solution.intToRoman(3749), "MMMDCCXLIX")
        XCTAssertEqual(solution.intToRoman(58), "LVIII")
        XCTAssertEqual(solution.intToRoman(1994), "MCMXCIV")
    }
}

