// https://leetcode.com/problems/length-of-last-word/description/?envType=study-plan-v2&envId=top-interview-150

final class LengthLastWord {
    func lengthOfLastWord(_ s: String) -> Int {
        s.split(separator: " ").last?.count ?? 0
    }
}
