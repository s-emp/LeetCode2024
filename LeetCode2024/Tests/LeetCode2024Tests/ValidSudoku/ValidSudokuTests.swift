import XCTest
@testable import LeetCode2024

final class ValidSudokuTests: XCTestCase {
    var solution: ValidSudoku!
    
    override func setUp() {
        solution = .init()
    }
    
    func testIsValid() {
        XCTAssertEqual(solution.isValidSudoku(
            [["5","3",".",".","7",".",".",".","."]
             ,["6",".",".","1","9","5",".",".","."]
             ,[".","9","8",".",".",".",".","6","."]
             ,["8",".",".",".","6",".",".",".","3"]
             ,["4",".",".","8",".","3",".",".","1"]
             ,["7",".",".",".","2",".",".",".","6"]
             ,[".","6",".",".",".",".","2","8","."]
             ,[".",".",".","4","1","9",".",".","5"]
             ,[".",".",".",".","8",".",".","7","9"]]
        ), true)
        XCTAssertEqual(solution.isValidSudoku([["8", "3", ".", "7", "8"]]), false)
        XCTAssertEqual(solution.isValidSudoku([["8"], ["3"], ["8"]]), false)
        XCTAssertEqual(solution.isValidSudoku(
            [["1", "2", "3"],
             ["4", "5", "6"],
             ["7", "8", "1"]
            ]
        ), false)
    }
}

