// https://leetcode.com/problems/product-of-array-except-self/?envType=study-plan-v2&envId=top-interview-150

final class ProductArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        var result = Array(repeating: 1, count: nums.count)
        // prefix
        for i in 0..<nums.count {
            if i > 0 {
                result[i] = result[i-1] * nums[i-1]
            }
        }
        // sufix
        var lastSuffix = 1
        for i in (0..<nums.count).reversed() {
            if i < nums.count - 1 {
                result[i] *= nums[i + 1] * lastSuffix
                lastSuffix *= nums[i + 1]
            }
        }
        return result
    }
}
