// https://leetcode.com/problems/product-of-array-except-self/?envType=study-plan-v2&envId=top-interview-150

final class ProductArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        var currentResult = 1
        for i in 0..<nums.count {
            for j in 0..<nums.count where i != j {
                currentResult *= nums[j]
            }
            result[i] = currentResult
            currentResult = 1
        }
        return result
    }
}
