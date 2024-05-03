final class MaximumSubarray {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var sum = 0
        for num in nums {
            sum += num
            result = max(result, sum)
            if sum < 0 { sum = 0 }
        }
        return result
    }
}
