import XCTest
@testable import LeetCode2024

final class GasStationTests: XCTestCase {
    var solution: GasStation!
    
    override func setUp() {
        solution = .init()
    }
    
    func testCanCompleteCircuit() {
//        XCTAssertEqual(solution.canCompleteCircuit([1,2,3,4,5], [3,4,5,1,2]), 3)
        XCTAssertEqual(solution.canCompleteCircuit([2,3,4], [3,4,3]), -1)
    }
}

