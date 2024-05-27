import XCTest
@testable import LeetCode2024

final class Lev_1Tests: XCTestCase {
    var solution: Lev_1!
    
    override func setUp() {
        solution = .init()
    }
    
    func testSolution() {
        var array = [2,2,2]
        solution.removeElement(arr: &array)
        XCTAssertEqual(array, [])
        array = [2,3,4,5]
        solution.removeElement(arr: &array)
        XCTAssertEqual(array, [3,5])
        array = [1,3,5]
        solution.removeElement(arr: &array)
        XCTAssertEqual(array, [1,3,5])
        array = [1,2,3,4]
        solution.removeElement(arr: &array)
        XCTAssertEqual(array, [1,3])
        array = [1,2,2]
        solution.removeElement(arr: &array)
        XCTAssertEqual(array, [1])
        array = []
        solution.removeElement(arr: &array)
        XCTAssertEqual(array, [])
    }
}

