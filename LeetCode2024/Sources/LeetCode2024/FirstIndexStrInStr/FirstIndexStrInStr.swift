//

final class FirstIndexStrInStr {
    
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let haystack = Array(haystack)
        let needle = Array(needle)
        guard needle.count <= haystack.count else { return -1 }
        for i in (0..<haystack.count - needle.count + 1) {
            if haystack[i] == needle[0] {
                var isSubstring = true
                for j in 0..<needle.count {
                    if haystack[i+j] == needle[j] { continue }
                    isSubstring = false
                    break
                }
                if isSubstring { return i }
            }
            
        }
        return -1
    }
    
}
