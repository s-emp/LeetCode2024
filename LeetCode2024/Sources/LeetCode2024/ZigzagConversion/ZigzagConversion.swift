// https://leetcode.com/problems/zigzag-conversion/description/?envType=study-plan-v2&envId=top-interview-150

final class ZigzagConversion {
    func convert(_ s: String, _ numRows: Int) -> String {
        var result = Array(repeating: String(), count: numRows)
        var isLine = true
        for (index, character) in s.enumerated() {
            if index % numRows == 0 {
                isLine.toggle()
                
            }
        }
        return result.joined()
    }
}
