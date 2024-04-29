final class LongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var startIterator = s.makeIterator(), endIterator = s.makeIterator()
        var current = Set<Character>()
        var result = 0
        while let next = startIterator.next() {
            let (isSuccess, _) = current.insert(next)
            guard !isSuccess else { continue }
            result = max(result, current.count)
            while !current.isEmpty {
                let endNext = endIterator.next()!
                current.remove(endNext)
                if current.insert(next).inserted { break }
            }
        }
        return max(result, current.count)
    }
}
