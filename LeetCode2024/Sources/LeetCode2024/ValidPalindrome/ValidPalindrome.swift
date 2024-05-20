// https://leetcode.com/problems/valid-palindrome/?envType=study-plan-v2&envId=top-interview-150

final class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        guard s.count > 1 else { return true }
        var startIndex = s.startIndex
        var endIndex = s.index(before: s.endIndex)
        while startIndex < endIndex {
            let startCharacter = s[startIndex]
            let endCharacter = s[endIndex]
            guard startCharacter.isLetter || startCharacter.isNumber else {
                startIndex = s.index(after: startIndex)
                continue
            }
            guard endCharacter.isLetter || endCharacter.isNumber else {
                endIndex = s.index(before: endIndex)
                continue
            }
            guard startCharacter.lowercased() == endCharacter.lowercased() else { return false }
            startIndex = s.index(after: startIndex)
            endIndex = s.index(before: endIndex)
        }
        return true
    }
}
