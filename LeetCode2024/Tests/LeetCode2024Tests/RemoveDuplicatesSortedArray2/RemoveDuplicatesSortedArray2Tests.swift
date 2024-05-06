import XCTest
@testable import LeetCode2024

final class RemoveDuplicatesSortedArray2Tests: XCTestCase {
    var solution: RemoveDuplicatesSortedArray2!
    
    override func setUp() {
        solution = .init()
    }
    
    func testRemoveDuplicates() {
        var nums = [1,1,1,2,2,3]
        XCTAssertEqual(solution.removeDuplicates(&nums), 5)
        
        nums = [0,0,1,1,1,1,2,3,3]
        XCTAssertEqual(solution.removeDuplicates(&nums), 7)
    }
}

