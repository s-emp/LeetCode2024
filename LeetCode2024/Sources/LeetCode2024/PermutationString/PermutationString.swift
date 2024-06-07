// https://leetcode.com/problems/permutation-in-string/

final class PermutationString {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else { return false }
        var lastIndex = s2.startIndex
        var index = s2.startIndex
        var expected = [Character: Int](minimumCapacity: s1.count)
        var window = [Character: Int](minimumCapacity: s1.count)
        for character in s1 {
            expected[character, default: 0] += 1
            
            window[s2[index], default: 0] += 1
            index = s2.index(after: index)
        }
        while index < s2.endIndex {
            guard window != expected else { return true }
            let deleteCharacter = s2[lastIndex]
            window[deleteCharacter]! -= 1
            if window[deleteCharacter]! == 0 { window.removeValue(forKey: deleteCharacter) }
            let addCharacter = s2[index]
            window[addCharacter, default: 0] += 1
            lastIndex = s2.index(after: lastIndex)
            index = s2.index(after: index)
        }
        return window == expected
    }
}
