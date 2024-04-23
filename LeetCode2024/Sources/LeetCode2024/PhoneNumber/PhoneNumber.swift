// https://leetcode.com/problems/letter-combinations-of-a-phone-number/description/

final class PhoneNumber {
    private let numbers: [Character: [Character]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"],
    ]
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 1 else {
            return numbers[digits.first ?? "1"]?.map { String($0) } ?? []
        }
        let numbers: [[Character]] = digits.compactMap { self.numbers[$0] }
        var currentIndex: [Int] = Array(repeating: 0, count: digits.count)
        var result: [String] = []
        let numbersRange = 0..<numbers.count
        
        while currentIndex[0] < numbers[0].count {
            var currentString = ""
            for index in numbersRange {
                currentString.append(numbers[index][currentIndex[index]])
            }
            for index in numbersRange.reversed() {
                if currentIndex[index] < numbers[index].count - 1 {
                    currentIndex[index] += 1
                    break
                } else {
                    if index == 0 {
                        currentIndex[index] += 1
                    } else {
                        currentIndex[index] = 0
                    }
                }
            }
            result.append(currentString)
        }
        return result
    }
}
