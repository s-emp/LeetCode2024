import XCTest
@testable import LeetCode2024

final class BestTimeBuySellStockTests: XCTestCase {
    var solution: BestTimeBuySellStock!
    
    override func setUp() {
        solution = .init()
    }
    
    func testMaxProfit() {
        XCTAssertEqual(solution.maxProfit([4,3,2,1]), 0)
        XCTAssertEqual(solution.maxProfit([3,10,1,4]), 7)
        XCTAssertEqual(solution.maxProfit([1,2,3,4]), 3)
        XCTAssertEqual(solution.maxProfit([0]), 0)
    }
}

