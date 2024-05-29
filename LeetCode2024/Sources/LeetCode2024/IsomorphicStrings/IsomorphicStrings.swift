// https://leetcode.com/problems/isomorphic-strings/?envType=study-plan-v2&envId=top-interview-150

final class IsomorphicStrings {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var setSecondStr = Set<Character>()
        var dictionaryFirstStr = [Character: Character]()
        var secondStrIndex = t.startIndex
        for firstStrCharacter in s {
            let secondStrCharacter = t[secondStrIndex]
            if let dictionaryCharacter = dictionaryFirstStr[firstStrCharacter] {
                guard dictionaryCharacter == secondStrCharacter else { return false }
            } else {
                if !setSecondStr.insert(secondStrCharacter).inserted { return false }
                dictionaryFirstStr[firstStrCharacter] = secondStrCharacter
            }
            secondStrIndex = t.index(after: secondStrIndex)
        }
        return true
    }
}
