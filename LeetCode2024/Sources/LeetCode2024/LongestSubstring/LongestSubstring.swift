// https://leetcode.com/problems/longest-substring-without-repeating-characters/?envType=study-plan-v2&envId=top-interview-150

final class LongestSubstring {
    @_optimize(speed)
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // Мы идем окном, где lastIndex это левая граница, а currentIndex - правая граница. Когда доходим до найденного, ставим левую на следующий за найденным, потому что это и есть реальная новая левая граница
        guard !s.isEmpty else { return 0 }
        var lastIndex = 0, currentIndex = 0, maxLen = 0
        var iterator = s.makeIterator()
        var dic = Dictionary<Character, Int>()
        while let next = iterator.next() {
            guard let findIndex = dic[next], lastIndex <= findIndex else {
                dic[next] = currentIndex
                currentIndex += 1
                continue
            }
            let currentLen = currentIndex - lastIndex
            maxLen = max(maxLen, currentLen)
            dic[next] = currentIndex
            lastIndex = findIndex + 1
            currentIndex += 1
        }
        
        return max(maxLen, currentIndex - lastIndex)
    }
}
