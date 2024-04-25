import XCTest
@testable import LeetCode2024

final class RangeSumOfBSTTests: XCTestCase {
    var solution: RangeSumOfBST!
    
    override func setUp() {
        solution = .init()
    }
    
    func testRangeSumBST() {
        XCTAssertEqual(
            solution.rangeSumBST(
                .init(
                    10,
                    .init(5, .init(3), .init(7)),
                    .init(15, nil, .init(18))
                ),
                7,
                15
            ),
            32
        )
        XCTAssertEqual(
            solution.rangeSumBST(
                .init(
                    10,
                    .init(5, .init(3, .init(1), nil), .init(7, .init(6), nil)),
                    .init(15, .init(13), .init(18))
                ),
                6,
                10
            ),
            23
        )
    }
}

