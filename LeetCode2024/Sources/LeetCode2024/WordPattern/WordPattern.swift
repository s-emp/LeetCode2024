// https://leetcode.com/problems/word-pattern/description/?envType=study-plan-v2&envId=top-interview-150

final class WordPattern {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let split = s.split(separator: " ")
        guard pattern.count == split.count else { return false }
        var dic = [Character: String.SubSequence]()
        var set = Set<String.SubSequence>()
        var index = 0
        for character in pattern {
            let string = split[index]
            if let dicString = dic[character] {
                guard dicString == string else { return false }
            } else {
                guard set.insert(string).inserted else { return false }
                dic[character] = string
            }
            index += 1
        }
        return true
    }
}
