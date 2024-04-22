import XCTest
@testable import LeetCode2024

final class ArrayToListNodeTests: XCTestCase {
    
    func testToListNode() {
        XCTAssertEqual([1,2,3,4].toListNode(), .init(1, .init(2, .init(3, .init(4)))))
    }
}

