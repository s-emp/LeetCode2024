// https://leetcode.com/problems/pascals-triangle/description/

final class Triangle {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[1], [1, 1]]
        guard numRows > 2 else {
            switch numRows {
            case 1: return [[1]]
            case 2: return [[1], [1, 1]]
            default: return [[]]
            }
        }
        var counter = numRows - 2
        while counter > 0 {
            let lastRow = result.last!
            var newRow = [1]
            for (index, value) in lastRow.enumerated() where index < lastRow.count - 1 {
                let sum = value + lastRow[index + 1]
                newRow.append(sum)
            }
            newRow.append(1)
            result.append(newRow)
            counter -= 1
        }
        return result
    }
}
