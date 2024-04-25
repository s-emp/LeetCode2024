import XCTest
@testable import LeetCode2024

final class VerticalOrderTraversalTests: XCTestCase {
    var solution: VerticalOrderTraversal!
    
    override func setUp() {
        solution = .init()
    }
    
    func testVerticalOrderTraversal() {
        XCTAssertEqual(
            solution.verticalOrder(
                .init(
                    3,
                    .init(9),
                    .init(20, .init(15), .init(7))
                )
            ),
            [[9],[3,15],[20],[7]]
        )
        XCTAssertEqual(
            solution.verticalOrder(
                .init(
                    3,
                    .init(9, .init(4), .init(0)),
                    .init(8, .init(1), .init(7))
                )
            ),
            [[4],[9],[3,0,1],[8],[7]]
        )
        XCTAssertEqual(
            solution.verticalOrder(
                .init(
                    3,
                    .init(9, .init(4), .init(0, nil, .init(2))),
                    .init(8, .init(1, .init(5), nil), .init(7))
                )
            ),
            [[4],[9,5],[3,0,1],[8,2],[7]]
        )
        XCTAssertEqual(solution.verticalOrder(nil), [])
    }
}

