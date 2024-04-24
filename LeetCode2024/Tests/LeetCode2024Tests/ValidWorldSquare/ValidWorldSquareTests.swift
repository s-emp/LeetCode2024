import XCTest
@testable import LeetCode2024

final class ValidWorldSquareTests: XCTestCase {
    var solution: ValidWorldSquare!
    
    override func setUp() {
        solution = .init()
    }
    
    func testValidWorldSquare() {
        XCTAssertEqual(solution.validWordSquare(["abcd","bnrt","crmy","dtye"]), true)
        XCTAssertEqual(solution.validWordSquare(["abcd","bnrt","crm","dt"]), true)
        XCTAssertEqual(solution.validWordSquare(["ball","area","read","lady"]), false)
        
    }
}

