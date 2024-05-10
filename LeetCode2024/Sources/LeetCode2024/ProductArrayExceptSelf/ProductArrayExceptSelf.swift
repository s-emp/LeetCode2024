// https://leetcode.com/problems/product-of-array-except-self/?envType=study-plan-v2&envId=top-interview-150

final class ProductArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        let allResult = nums.reduce(1) { last, num in
            return last * num
        }
        var zeroCount = 0
        for i in 0..<nums.count {
            if zeroCount == 2 { return Array(repeating: 0, count: nums.count) }
            let num = nums[i]
            if num == 0 {
                zeroCount += 1
                var currentResult = 1
                for j in 0..<nums.count where i != j {
                    currentResult *= nums[j]
                }
                result[i] = currentResult
            } else {
                result[i] = allResult / num
            }
        }
        return result
    }
}
