// https://leetcode.com/problems/minimum-size-subarray-sum/description/?envType=study-plan-v2&envId=top-interview-150

final class MinimumSizeSubarraySum {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var last = 0
        var sum = 0
        var result = Int.max
        for (index, num) in nums.enumerated() {
            sum += num
            while sum >= target {
                result = min(result, index - last + 1)
                sum -= nums[last]
                last += 1
            }
        }
        return result == Int.max ? 0 : result
    }
}
