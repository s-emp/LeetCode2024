final class SpiralMatrix {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var matrix = matrix
        var result = [Int]()
        while !matrix.isEmpty {
            result.append(contentsOf: matrix.removeFirst())
            guard !matrix.isEmpty else { break }
            for i in 0..<matrix.count - 1 {
                if matrix[i].count > 0 {
                    result.append(matrix[i].removeLast())
                } else {
                    break
                }
            }
            result.append(contentsOf: matrix.removeLast().reversed())
            guard !matrix.isEmpty else { break }
            for i in (1..<matrix.count).reversed() {
                if matrix[i].count > 0 {
                    result.append(matrix[i].removeFirst())
                } else {
                    matrix.removeAll { $0.isEmpty }
                    break
                }
            }
        }
        return result
    }
}
