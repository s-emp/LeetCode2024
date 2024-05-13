// https://leetcode.com/problems/roman-to-integer/description/?envType=study-plan-v2&envId=top-interview-150

final class RomanInteger {
    private let dic: [Character: Int] = [
        "I":1,
        "V":5,
        "X":10,
        "L":50,
        "C":100,
        "D":500,
        "M":1000,
    ]
    
    func romanToInt(_ s: String) -> Int {
        var result = 0
        var currentMax = 0
        for c in s.reversed() {
            let value = dic[c]!
            if currentMax > value {
                result -= value
            } else {
                result += value
                currentMax = max(currentMax, value)
            }
        }
        return result
    }
}
