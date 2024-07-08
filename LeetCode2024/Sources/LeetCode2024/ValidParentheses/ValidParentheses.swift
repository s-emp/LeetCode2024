// https://leetcode.com/problems/valid-parentheses/?envType=study-plan-v2&envId=top-interview-150

final class ValidParentheses {
    private let openCharacter: [Character: Character] = ["[": "]", "{": "}", "(": ")"]
    private let closeCharacter: [Character: Character] = ["]": "[", "}": "{",")": "("]
    func isValid(_ s: String) -> Bool {
        var stack = Array<Character>()
        
        for character in s {
            guard openCharacter[character] == nil else {
                stack.append(character)
                continue
            }
            guard 
                let expectedCharacter = closeCharacter[character],
                let last = stack.popLast(),
                expectedCharacter == last
            else { return false }
        }
        return stack.isEmpty
    }
}
