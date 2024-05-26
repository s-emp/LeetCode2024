// https://leetcode.com/problems/longest-substring-without-repeating-characters/?envType=study-plan-v2&envId=top-interview-150

final class LongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var last = s.startIndex
        var len = 0
        var characters = Set<Character>()
        var iterator = s.makeIterator()
        while let next = iterator.next() {
            if characters.insert(next).inserted == false {
                len = max(len, characters.count)
                repeat {
                    characters.remove(s[last])
                    last = s.index(after: last)
                } while characters.insert(next).inserted == false
            }
        }
        return max(len, characters.count)
    }
}
