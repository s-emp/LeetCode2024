import XCTest
@testable import LeetCode2024

final class ProductArrayExceptSelfTests: XCTestCase {
    var solution: ProductArrayExceptSelf!
    
    override func setUp() {
        solution = .init()
    }
    
    func testProductExceptSelf() {
        XCTAssertEqual(solution.productExceptSelf([1,2,3,4]), [24,12,8,6])
//        XCTAssertEqual(solution.productExceptSelf([-1,1,0,-3,3]), [0,0,9,0,0])
        XCTAssertEqual(solution.productExceptSelf([1,2]), [2,1])
        
    }
}

