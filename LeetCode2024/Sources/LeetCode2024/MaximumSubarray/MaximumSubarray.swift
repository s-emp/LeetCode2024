final class MaximumSubarray {
    func maxSubArray(_ nums: [Int]) -> Int {
        let first = nums.first!
        guard nums.count > 1 else { return first }
        var currentSum = first
        var currentMax = first
        for i in 1..<nums.count {
            let num = nums[i]
            let newSum = currentSum + num
            currentMax = max(currentMax, newSum, num)
            if currentMax == num || newSum <= 0 {
                currentSum = num
            }
            currentSum = max(newSum, num)
        }
        return currentMax
    }
}
