// https://leetcode.com/problems/length-of-last-word/description/?envType=study-plan-v2&envId=top-interview-150

final class LengthLastWord {
    func lengthOfLastWord(_ s: String) -> Int {
        var currentResult = 0
        for c in s.reversed() {
            if c == " " {
                guard currentResult != 0 else { continue }
                return currentResult
            } else {
                currentResult += 1
            }
        }
        return currentResult
    }
}
