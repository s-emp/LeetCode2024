import XCTest
@testable import LeetCode2024

final class FibonacciNumberTests: XCTestCase {
    var solution: FibonacciNumber!
    
    override func setUp() {
        solution = .init()
    }
    
    func testFibonacciNumber() {
        XCTAssertEqual(solution.fib(0), 0)
        XCTAssertEqual(solution.fib(1), 1)
        XCTAssertEqual(solution.fib(4), 5)
    }
}

