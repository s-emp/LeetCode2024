final class IsSubsequence {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count > 0 else { return true }
        guard t.count > 0 else { return false }
        var sIterator = s.makeIterator()
        var sCharater = sIterator.next()
        var tIterator = t.makeIterator()
        while let next = tIterator.next(), let findCharacter = sCharater {
            if next == findCharacter {
                guard let newFindCharacter = sIterator.next() else {
                    return true
                }
                sCharater = newFindCharacter
            }
        }
        return false
    }
}
