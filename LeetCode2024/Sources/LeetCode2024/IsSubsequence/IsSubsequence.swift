// https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=top-interview-150

final class IsSubsequence {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count > 0 else { return true }
        guard t.count > 0 else { return false }
        var index = t.startIndex
        for c in s {
            var isSearch = false
            while index < t.endIndex {
                if c == t[index] {
                    index = t.index(after: index)
                    isSearch = true
                    break
                }
                index = t.index(after: index)
            }
            guard isSearch else { return false }
        }
        return true
    }
}
