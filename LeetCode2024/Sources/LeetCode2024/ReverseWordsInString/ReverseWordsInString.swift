// https://leetcode.com/problems/reverse-words-in-a-string/description/?envType=study-plan-v2&envId=top-interview-150

final class ReverseWordsInString {
    func reverseWords(_ s: String) -> String {
        var startIndex = s.startIndex
        var index = s.startIndex
        var result: [String] = []
        while index < s.endIndex {
            if s[index] == " " {
                guard startIndex != index else {
                    startIndex = s.index(after: index)
                    index = startIndex
                    continue
                }
                let newString = String(s[startIndex..<index])
                startIndex = s.index(after: index)
                index = startIndex
                if newString != " " {
                    result.append(newString)
                }
            } else {
                index = s.index(after: index)
            }
        }
        if startIndex != index {
            let newString = String(s[startIndex..<index])
            if newString != " " {
                result.append(newString)
            }
        }
        var resultString = ""
        for string in result.reversed() {
            resultString.append(string + " ")
        }
        resultString.removeLast()
        return resultString
    }
}
