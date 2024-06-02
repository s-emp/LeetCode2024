// https://leetcode.com/problems/valid-anagram/?envType=study-plan-v2&envId=top-interview-150

final class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var dic = [Character: Int]()
        for character in s {
            dic[character, default: 0] += 1
        }
        for character in t {
            guard let count = dic[character], count > 0 else { return false }
            dic[character] = count - 1
        }
        return true
    }
}
