// https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/?envType=study-plan-v2&envId=top-interview-150

final class TwoSum2 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var startIndex = numbers.startIndex
        var endIndex = numbers.endIndex - 1
        while startIndex < endIndex {
            let sum = numbers[startIndex] + numbers[endIndex]
            if sum == target { return [startIndex + 1, endIndex + 1] }
            if sum > target {
                endIndex -= 1
            } else {
                startIndex += 1
            }
        }
        return [0,0]
    }
}
