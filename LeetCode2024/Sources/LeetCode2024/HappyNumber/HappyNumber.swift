// https://leetcode.com/problems/happy-number/description/?envType=study-plan-v2&envId=top-interview-150

final class HappyNumber {
    func isHappy(_ n: Int) -> Bool {
        var set = Set<Int>()
        var currentValue = n
        var count = 0
        while currentValue > 1 || count > 1_000_000 {
            let array = Array(String(currentValue))
            var newValue = 0
            for character in array {
                guard let value = Int(String(character)) else { continue }
                newValue += value * value
            }
            guard set.insert(newValue).inserted else { return false }
            currentValue = newValue
            count += 1
        }
        return count < 1_000_000 ? true : false
    }
}
