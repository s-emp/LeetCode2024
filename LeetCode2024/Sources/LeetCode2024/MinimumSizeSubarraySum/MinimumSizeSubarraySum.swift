// https://leetcode.com/problems/minimum-size-subarray-sum/description/?envType=study-plan-v2&envId=top-interview-150

final class MinimumSizeSubarraySumCustom {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        let nums = nums.sorted(by: <).reversed()
        var count = 0
        var currentSum = 0
        for num in nums {
            currentSum += num
            count += 1
            if currentSum >= target { return count }
        }
        return 0
    }
}
