import XCTest
@testable import LeetCode2024

final class MedianTwoSortedArraysTests: XCTestCase {
    var solution: MedianTwoSortedArrays!
    
    override func setUp() {
        solution = .init()
    }
    
    func testFindMedianSortedArrays() {
        XCTAssertEqual(solution.findMedianSortedArrays([1,3], [2]), 2)
        XCTAssertEqual(solution.findMedianSortedArrays([1,2], [3,4]), 2.5)
        XCTAssertEqual(solution.findMedianSortedArrays([1,4], [2,3]), 2.5)
    }
}

