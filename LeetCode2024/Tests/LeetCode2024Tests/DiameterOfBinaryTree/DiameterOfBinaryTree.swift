import XCTest
@testable import LeetCode2024

final class DiameterOfBinaryTreeTests: XCTestCase {
    var solution: DiameterOfBinaryTree!
    
    override func setUp() {
        solution = .init()
    }
    
    func testDiameterOfBinaryTree() {
        XCTAssertEqual(
            solution.diameterOfBinaryTree(
                .init(
                    1,
                    .init(2, .init(4), .init(5)),
                    .init(3)
                )
            ),
            3
        )
        XCTAssertEqual(
            solution.diameterOfBinaryTree(
                .init(
                    1,
                    .init(2),
                    nil
                )
            ),
            1
        )
        XCTAssertEqual(
            solution.diameterOfBinaryTree(
                .init(
                    1,
                    .init(
                        2,
                        .init(4, .init(7, .init(9), nil), nil),
                        .init(5, nil, .init(6, nil, .init(8)))
                    ),
                    .init(3)
                )
            ),
            6
        )
        XCTAssertEqual(
            solution.diameterOfBinaryTree(
                .init(1)
            ),
            0
        )
    }
}

