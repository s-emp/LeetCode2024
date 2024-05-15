// https://leetcode.com/problems/longest-common-prefix/description/?envType=study-plan-v2&envId=top-interview-150

final class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs[0].count > 0 else { return "" }
        var index = 0
        var result = ""
        
        while true {
            guard strs[0].count > index else { return result }
            let currentCharacter: Character = strs[0][
                strs[0].index(strs[0].startIndex, offsetBy: index)
            ]
            for str in strs {
                guard str.count > index else { return result }
                if str[str.index(str.startIndex, offsetBy: index)] != currentCharacter {
                    return result
                }
            }
            index += 1
            result.append(String(currentCharacter))
        }
        return result
    }
}
