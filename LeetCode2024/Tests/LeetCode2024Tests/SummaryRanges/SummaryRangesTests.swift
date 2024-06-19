
import XCTest
@testable import LeetCode2024

final class SummaryRangesTests: XCTestCase {
    var solution: SummaryRanges!
    
    override func setUp() {
        solution = .init()
    }
    
    func testSummaryRanges() {
        XCTAssertEqual(solution.summaryRanges([0,1,4,5,7]), ["0->1", "4->5", "7"])
        XCTAssertEqual(solution.summaryRanges([]), [])
        XCTAssertEqual(solution.summaryRanges([5]), ["5"])
        XCTAssertEqual(solution.summaryRanges([1,2,3,4,5]), ["1->5"])
    }
}

