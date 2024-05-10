// https://leetcode.com/problems/product-of-array-except-self/?envType=study-plan-v2&envId=top-interview-150

final class ProductArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        var result = Array(repeating: 1, count: nums.count)
        let end = nums.count - 1
        var lastPrefix = 1
        var lastSuffix = 1
        for i in 1..<nums.count {
            lastPrefix *= nums[i - 1]
            result[i] *= lastPrefix
            
            let suffixIndex = end - i
            lastSuffix *= nums[suffixIndex + 1]
            result[suffixIndex] *= lastSuffix
        }
        return result
    }
}
