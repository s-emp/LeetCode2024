// https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/description/

final class LongestSubarray1 {
    func longestSubarray(_ nums: [Int]) -> Int {
        var start = 0
        var end = 0
        var maxValue = 0
        var indexZero = -1
        for num in nums {
            if num == 0 {
                if indexZero == -1 {
                    indexZero = end
                    end += 1
                } else {
                    maxValue = max(end - start - 1, maxValue)
                    start = indexZero + 1
                    indexZero = end
                    end += 1
                }
            } else {
                end += 1
            }
        }
        return max(maxValue, end - start - 1)
    }
}
