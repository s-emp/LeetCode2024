import XCTest
@testable import LeetCode2024

final class RotateArrayTests: XCTestCase {
    var solution: RotateArray!
    
    override func setUp() {
        solution = .init()
    }
    
    func testRotate() {
        var num = [1,2,3,4,5,6,7]
        solution.rotate(&num, 3)
        XCTAssertEqual(num, [5,6,7,1,2,3,4])
        num = [-1,-100,3,99]
        solution.rotate(&num, 2)
        XCTAssertEqual(num, [3,99,-1,-100])
    }
}

