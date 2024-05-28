// https://leetcode.com/problems/ransom-note/?envType=study-plan-v2&envId=top-interview-150

final class RansomNote {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dic = Dictionary<Character, Int>()
        for character in magazine {
            dic[character, default: 0] += 1
        }
        for note in ransomNote {
            guard let count = dic[note], count > 0 else { return false }
            dic[note] = count - 1
        }
        return true 
    }
}
