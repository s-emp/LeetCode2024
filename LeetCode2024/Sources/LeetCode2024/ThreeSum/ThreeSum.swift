// https://leetcode.com/problems/3sum/description/?envType=study-plan-v2&envId=top-interview-150

final class ThreeSum {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted(by: <)
        var result: [[Int]] = []
        let len = nums.count
        for i in 0..<len {
            if i > 0 && nums[i] == nums[i-1] { continue }
            var a = i + 1
            var b = len - 1
            let target = 0 - nums[i]
            while a < b {
                let sum = nums[a] + nums[b]
                if sum == target {
                    result.append([nums[i], nums[a], nums[b]])
                    a += 1
                    b -= 1
                    while a < b && nums[a] == nums[a-1] { a += 1 }
                    while a < b && nums[b] == nums[b+1] { b -= 1 }
                } else {
                    sum < target ? a += 1 : (b -= 1)
                }
            }
        }
        return result
    }
}
