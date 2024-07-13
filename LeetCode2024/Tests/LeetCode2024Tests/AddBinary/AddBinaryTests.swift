import XCTest
@testable import LeetCode2024

final class AddBinaryTests: XCTestCase {
    var solution: AddBinary!
    
    override func setUp() {
        solution = .init()
    }
    
    func testAddBinary() {
        XCTAssertEqual(solution.addBinary("0", "1"), "1")
        XCTAssertEqual(solution.addBinary("0", "0"), "0")
        XCTAssertEqual(solution.addBinary("1", "1"), "10")
        XCTAssertEqual(solution.addBinary("1011", "1"), "1100")
        XCTAssertEqual(solution.addBinary("1011", "1011"), "10110")
    }
}

