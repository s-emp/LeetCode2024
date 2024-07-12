// https://leetcode.com/problems/plus-one/description/

final class PlusOne {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for (index, number) in digits.enumerated().reversed() {
            if number == 9 {
                result[index] = 0
            } else {
                result[index] = number + 1
                return result
            }
        }
        return [1] + result
    }
}
