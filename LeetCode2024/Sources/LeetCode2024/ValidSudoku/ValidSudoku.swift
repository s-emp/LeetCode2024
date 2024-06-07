// https://leetcode.com/problems/valid-sudoku/?envType=study-plan-v2&envId=top-interview-150

final class ValidSudoku {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var vSet = [Set<Character>](repeating: Set<Character>(), count: 9)
        var bSet = [Set<Character>]()
        for (index, line) in board.enumerated() {
            
            var hSet = Set<Character>()
            var currentBlock = -1
            if index % 3 == 0 {
                bSet = [Set<Character>](repeating: Set<Character>(), count: 3)
            }
            
            for (index, element) in line.enumerated() {
                if index % 3 == 0 { currentBlock += 1 }
                guard element != "." else { continue }
                guard hSet.insert(element).inserted else { return false }
                guard vSet[index].insert(element).inserted else { return false }
                guard bSet[currentBlock].insert(element).inserted else { return false }
            }
        }
        return true
    }
    
}
