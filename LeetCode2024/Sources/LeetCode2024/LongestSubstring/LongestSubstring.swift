final class LongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var dict: [Character: Int] = [:]
        var lowerIndex = 0, currentIndex = 0, maxLenght = 0
        var iterator = s.makeIterator()
        while let next = iterator.next() {
            guard let chapterIndex = dict[next], lowerIndex <= chapterIndex else {
                dict[next] = currentIndex
                currentIndex += 1
                continue
            }
            let currentLength = currentIndex - lowerIndex
            maxLenght = max(currentLength, maxLenght)
            dict[next] = currentIndex
            lowerIndex = chapterIndex + 1
            currentIndex += 1
        }
        let currentLength = currentIndex - lowerIndex
        return max(currentLength, maxLenght)
    }
}
