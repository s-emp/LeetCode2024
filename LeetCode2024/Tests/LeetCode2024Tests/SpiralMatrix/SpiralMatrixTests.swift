import XCTest
@testable import LeetCode2024

final class SpiralMatrixTests: XCTestCase {
    var solution: SpiralMatrix!
    
    override func setUp() {
        solution = .init()
    }
    
    func testSpiralOrder() {
        XCTAssertEqual(solution.spiralOrder([[1,2,3],[4,5,6],[7,8,9]]), [1,2,3,6,9,8,7,4,5])
        XCTAssertEqual(
            solution.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]),
            [1,2,3,4,8,12,11,10,9,5,6,7]
        )
        XCTAssertEqual(solution.spiralOrder([[1],[2],[3],[4],[5],[6],[7],[8],[9],[10]]), [1,2,3,4,5,6,7,8,9,10])
    }
}

